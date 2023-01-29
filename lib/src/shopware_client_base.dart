import 'package:chopper/chopper.dart';

import 'converters/converters.dart';
import 'models/models.dart';
import 'responses/responses.dart';
import 'services/services.dart';

class ShopwareClient {
  /// The chopper instance.
  late final ChopperClient chopper;

  /// The URL of your Shopware instance (without the trailing "/store-api").
  final String baseUrl;

  /// The access key for your Shopware instance.
  final String swAccessKey;

  String? swContextToken;

  final List<ChopperService> _services = [
    CategoryService.create(),
    PaymentMethodService.create(),
    ProductService.create(),
    CartService.create(),
  ];

  static const _converters = {
    // Responses
    CategoryCriteriaResponse: CategoryCriteriaResponse.fromJson,
    PaymentMethodCriteriaResponse: PaymentMethodCriteriaResponse.fromJson,
    ProductCriteriaResponse: ProductCriteriaResponse.fromJson,
    ProductDetailResponse: ProductDetailResponse.fromJson,

    // Models
    Category: Category.fromJson,
    PaymentMethod: PaymentMethod.fromJson,
    Media: Media.fromJson,
    MediaMetadata: MediaMetadata.fromJson,
    MediaThumbnail: MediaThumbnail.fromJson,
    Product: Product.fromJson,
    ProductMedia: ProductMedia.fromJson,
    CalculatedPrice: CalculatedPrice.fromJson,
    PropertyGroup: PropertyGroup.fromJson,
    PropertyGroupOption: PropertyGroupOption.fromJson,

    Cart: Cart.fromJson,
    CartPrice: CartPrice.fromJson,
    CartError: CartError.fromJson,
    LineItem: LineItem.fromJson,
  };

  final List<dynamic> _interceptors = [];

  ShopwareClient({
    required this.baseUrl,
    required this.swAccessKey,
  }) {
    print('[SW6 Client] initializing...');
    addInterceptor(_accessKeyInterceptor);
    addInterceptor(_contextTokenInterceptor);
    addInterceptor(_initialContextTokenInterceptor);

    chopper = ChopperClient(
      baseUrl: Uri.parse('$baseUrl/store-api'),
      services: _services,
      converter: const JsonSerializableConverter(_converters),
      interceptors: [
        ..._interceptors,
        (Request request) {
          print('[Request]: ${request.uri}');
          print('[Request body]: ${request.body}');
          return request;
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
        print(contextToken);
      }
      return response;
    };
  }

  RequestInterceptorFunc get _accessKeyInterceptor =>
      (Request request) => applyHeader(
            request,
            'sw-access-key',
            swAccessKey,
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
}
