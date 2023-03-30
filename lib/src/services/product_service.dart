import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/inputs/inputs.dart';
import 'package:shopware6_client/src/inputs/product_search_suggest_input.dart';

import '../models/models.dart';
import '../responses/responses.dart';

part 'product_service.chopper.dart';

@ChopperApi()
abstract class ProductService extends ChopperService {
  static ProductService create([ChopperClient? client]) =>
      _$ProductService(client);

  @Post(path: '/product')
  Future<Response<ProductCriteriaResponse>> getAll(
    @Body() CriteriaInput criteriaInput,
  );

  @Post(path: '/product/{productId}', optionalBody: true)
  Future<Response<ProductDetailResponse>> get(
    @Path('productId') ID productId, [
    @Body() CriteriaInput? criteriaInput,
  ]);

  @Post(path: '/product-listing/{categoryId}', optionalBody: true)
  Future<Response<ProductCriteriaResponse>> byCategoryId(
    @Path('categoryId') ID categoryId,
    @Body() ProductListingCriteriaInput criteriaInput,
  );

  @Post(path: '/search-suggest')
  Future<Response<ProductCriteriaResponse>> searchSuggest(
    @Body() ProductSearchSuggestInput suggestInput,
  );

  @Post(
    path: '/search',
    optionalBody: true,
  )
  Future<Response<ProductCriteriaResponse>> search(
    @Query() String search,
    @Body() ProductListingCriteriaInput criteriaInput,
  );
}
