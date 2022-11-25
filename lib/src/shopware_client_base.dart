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
  ];

  static const _converters = {
    // Responses
    CategoryCriteriaResponse: CategoryCriteriaResponse.fromJson,
    PaymentMethodCriteriaResponse: PaymentMethodCriteriaResponse.fromJson,

    // Models
    Category: Category.fromJson,
    PaymentMethod: PaymentMethod.fromJson,
    Media: Media.fromJson,
    MediaMetadata: MediaMetadata.fromJson,
    MediaThumbnail: MediaThumbnail.fromJson,
    Product: Product.fromJson,
    ProductMedia: ProductMedia.fromJson,
    CalculatedPrice: CalculatedPrice.fromJson,
  };

  final List<dynamic> _interceptors = [];

  ShopwareClient({
    required this.baseUrl,
    required this.swAccessKey,
  }) {
    addInterceptor(_accessKeyInterceptor);
    addInterceptor(_contextTokenInterceptor);
    addInterceptor(_initialContextTokenInterceptor);

    chopper = ChopperClient(
      baseUrl: '${baseUrl.rightStrip('/')}/store-api',
      services: _services,
      converter: const JsonSerializableConverter(_converters),
      interceptors: _interceptors,
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
          'sw-context-key',
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
}
