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
  Future<Response<ProductCriteriaResponse>> byCategoryId(ID categoryId) {
    final Uri $url = Uri.parse('/product-listing/${categoryId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<ProductCriteriaResponse, ProductCriteriaResponse>($request);
  }

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
}
