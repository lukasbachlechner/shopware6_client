// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ProductService extends ProductService {
  _$ProductService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductService;

  @override
  Future<Response<ProductCriteriaResponse>> getAll(
      CriteriaInput criteriaInput) {
    final Uri $url = Uri.parse('/product');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ProductCriteriaResponse, ProductCriteriaResponse>($request);
  }

  @override
  Future<Response<ProductDetailResponse>> get(
    ID productId, [
    CriteriaInput? criteriaInput,
  ]) {
    final Uri $url = Uri.parse('/product/${productId}');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ProductDetailResponse, ProductDetailResponse>($request);
  }

  @override
  Future<Response<ProductCriteriaResponse>> byCategoryId(
    ID categoryId,
    ProductListingCriteriaInput criteriaInput,
  ) {
    final Uri $url = Uri.parse('/product-listing/${categoryId}');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ProductCriteriaResponse, ProductCriteriaResponse>($request);
  }

  @override
  Future<Response<ProductCriteriaResponse>> searchSuggest(
      ProductSearchSuggestInput suggestInput) {
    final Uri $url = Uri.parse('/search-suggest');
    final $body = suggestInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ProductCriteriaResponse, ProductCriteriaResponse>($request);
  }

  @override
  Future<Response<ProductCriteriaResponse>> search(
    String search,
    ProductListingCriteriaInput criteriaInput,
  ) {
    final Uri $url = Uri.parse('/search');
    final Map<String, dynamic> $params = <String, dynamic>{'search': search};
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<ProductCriteriaResponse, ProductCriteriaResponse>($request);
  }
}
