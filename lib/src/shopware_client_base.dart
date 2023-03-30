import 'dart:convert';

import 'package:chopper/chopper.dart';
/* import 'package:logging/logging.dart'; */
import 'package:shopware6_client/src/models/context/cash_rounding.dart';
import 'package:shopware6_client/src/models/context/tax_free_config.dart';
import 'package:shopware6_client/src/services/auth_service.dart';
import 'package:shopware6_client/src/services/system_service.dart';

import 'converters/converters.dart';
import 'models/models.dart';
import 'responses/responses.dart';
import 'services/services.dart';

String prettyJson(String input) {
  final jsonObject = JsonDecoder().convert(input);
  final prettyString =
      JsonEncoder.withIndent('  ').convert(jsonObject).toString();
  return prettyString;
}

class ShopwareClientConfig {
  /// The URL of your Shopware instance (without the trailing "/store-api").
  final String baseUrl;

  /// The access key for your Shopware instance.
  final String swAccessKey;

  /// Enable logging
  final bool logging;

  final bool logRequestBody;
  final bool logResponseBody;

  const ShopwareClientConfig({
    required this.baseUrl,
    required this.swAccessKey,
    this.logging = false,
    this.logRequestBody = false,
    this.logResponseBody = false,
  });
}

class ShopwareClient {
  /// The chopper instance.
  late final ChopperClient chopper;

  /// The ShopwareClient config.
  final ShopwareClientConfig config;

  String? swContextToken;

  final List<ChopperService> _services = [
    CategoryService.create(),
    PaymentMethodService.create(),
    ProductService.create(),
    CartService.create(),
    ContextService.create(),
    AuthService.create(),
    SystemService.create(),
  ];

  static const _converters = {
    // Responses
    CategoryCriteriaResponse: CategoryCriteriaResponse.fromJson,
    PaymentMethodCriteriaResponse: PaymentMethodCriteriaResponse.fromJson,
    ProductCriteriaResponse: ProductCriteriaResponse.fromJson,
    ProductDetailResponse: ProductDetailResponse.fromJson,

    // Models
    Category: Category.fromJson,
    Media: Media.fromJson,
    MediaMetadata: MediaMetadata.fromJson,
    MediaThumbnail: MediaThumbnail.fromJson,
    Product: Product.fromJson,
    ProductMedia: ProductMedia.fromJson,
    CalculatedPrice: CalculatedPrice.fromJson,
    PropertyGroup: PropertyGroup.fromJson,
    PropertyGroupOption: PropertyGroupOption.fromJson,
    ProductSorting: ProductSorting.fromJson,

    Cart: Cart.fromJson,
    CartPrice: CartPrice.fromJson,
    CartError: CartError.fromJson,
    LineItem: LineItem.fromJson,
    CashRounding: CashRounding.fromJson,
    CoreContext: CoreContext.fromJson,
    Country: Country.fromJson,
    Currency: Currency.fromJson,
    CurrentContext: CurrentContext.fromJson,
    CustomerGroup: CustomerGroup.fromJson,
    DeliveryTime: DeliveryTime.fromJson,
    PaymentMethod: PaymentMethod.fromJson,
    SalesChannel: SalesChannel.fromJson,
    ShippingLocation: ShippingLocation.fromJson,
    ShippingMethod: ShippingMethod.fromJson,
    TaxFreeConfig: TaxFreeConfig.fromJson,
    Tax: Tax.fromJson,
    Language: Language.fromJson,
  };

  final List<dynamic> _interceptors = [];

  ShopwareClient({
    required this.config,
  }) {
    /* Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      if (record.loggerName == 'Chopper' && config.logging) {
        print(record.message);
      }
    }); */

    addInterceptor(_accessKeyInterceptor);
    addInterceptor(_contextTokenInterceptor);
    addInterceptor(_initialContextTokenInterceptor);

    chopper = ChopperClient(
      baseUrl: Uri.parse('${config.baseUrl}/store-api'),
      services: _services,
      converter: const JsonSerializableConverter(_converters),
      errorConverter: const JsonConverter(),
      interceptors: [
        ..._interceptors,
        (Request request) {
          /* print('[Request]: ${request.uri}'); */
          /* log.i(baseUrl); */
          final lines = ['📶 [${request.method}] ${request.uri}'];

          if (request.body != null && config.logRequestBody) {
            lines.add(prettyJson(request.body));
          }

          chopperLogger.info(lines.join('\n'));

          return request;
        },
        (Response<dynamic> response) {
          final method = response.base.request?.method;
          final requestUri =
              response.base.request?.url.path.replaceFirst('/store-api', '');
          final lines = [
            '${response.statusCode == 200 ? '✅' : '⛔️ ${response.statusCode}'} [$method] $requestUri',
            if (!response.isSuccessful) 'Error: ${response.error}'
          ];
          if (config.logResponseBody) {
            lines.add(prettyJson(response.bodyString));
          }
          chopperLogger.info(lines.join('\n'));
          return response;
        },
        (Response<dynamic> response) {
          return response;
        }
      ],
    );
  }

  void addInterceptor(dynamic interceptor) {
    _interceptors.add(interceptor);
  }

  Response Function(Response) get _initialContextTokenInterceptor {
    return (Response response) {
      final contextToken = response.headers['sw-context-token'];
      if (contextToken != null &&
          contextToken.isNotEmpty &&
          (swContextToken == null || swContextToken!.isEmpty)) {
        setContextToken(contextToken);
        chopperLogger.info('ℹ️ [Context token] $contextToken');
      }
      return response;
    };
  }

  RequestInterceptorFunc get _accessKeyInterceptor =>
      (Request request) => applyHeader(
            request,
            'sw-access-key',
            config.swAccessKey,
          );

  RequestInterceptorFunc get _contextTokenInterceptor {
    return (Request request) {
      if (swContextToken != null) {
        return applyHeader(
          request,
          'sw-context-token',
          swContextToken!,
        );
      }
      return request;
    };
  }

  ServiceType getService<ServiceType extends ChopperService>() {
    return chopper.getService<ServiceType>();
  }

  void setContextToken(String token) {
    swContextToken = token;
  }

  // SERVICES

  ProductService get products {
    return getService<ProductService>();
  }

  CategoryService get categories {
    return getService<CategoryService>();
  }

  CartService get cart {
    return getService<CartService>();
  }

  ContextService get context {
    return getService<ContextService>();
  }

  AuthService get auth {
    return getService<AuthService>();
  }

  SystemService get system {
    return getService<SystemService>();
  }
}
