import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/inputs/criteria_input.dart';

import '../models/models.dart';
import '../responses/responses.dart';

part 'product_service.chopper.dart';

@ChopperApi()
abstract class ProductService extends ChopperService {
  static ProductService create([ChopperClient? client]) =>
      _$ProductService(client);

  @Post(path: '/product-listing/{categoryId}', optionalBody: true)
  Future<Response<ProductCriteriaResponse>> byCategoryId(
    @Path('categoryId') ID categoryId,
  );

  @Post(path: '/product')
  Future<Response<ProductCriteriaResponse>> getAll(
    @Body() CriteriaInput criteriaInput,
  );

  @Post(path: '/product/{productId}', optionalBody: true)
  Future<Response<ProductDetailResponse>> get(
    @Path('productId') ID productId, [
    @Body() CriteriaInput? criteriaInput,
  ]);
}
