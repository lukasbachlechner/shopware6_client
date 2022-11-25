import 'package:chopper/chopper.dart';

part 'product_service.chopper.dart';

@ChopperApi()
abstract class ProductService extends ChopperService {
  static ProductService create([ChopperClient? client]) =>
      _$ProductService(client);
}
