import 'package:chopper/chopper.dart';
import 'models/media.dart';
import 'models/payment_method.dart';
import 'responses/payment_method_criteria_response.dart';
import 'services/category_service.dart';
import 'services/payment_method_service.dart';

import 'converters/json_serializable_converter.dart';
import 'models/category.dart';
import 'responses/category_criteria_response.dart';

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
  ];

  static const _converters = {
    CategoryCriteriaResponse: CategoryCriteriaResponse.fromJson,
    PaymentMethodCriteriaResponse: PaymentMethodCriteriaResponse.fromJson,
    Category: Category.fromJson,
    PaymentMethod: PaymentMethod.fromJson,
    Media: Media.fromJson,
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
