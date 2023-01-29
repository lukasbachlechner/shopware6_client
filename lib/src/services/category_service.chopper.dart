// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CategoryService extends CategoryService {
  _$CategoryService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CategoryService;

  @override
  Future<Response<CategoryCriteriaResponse>> getCategories() {
    final Uri $url = Uri.parse('/category');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<CategoryCriteriaResponse, CategoryCriteriaResponse>($request);
  }

  @override
  Future<Response<Category>> getCategory(ID categoryId) {
    final Uri $url = Uri.parse('/category/${categoryId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Category, Category>($request);
  }

  @override
  Future<Response<List<Category>>> getNavigationMenu(
    NavigationId requestActiveId,
    NavigationId requestRootId, {
    NavigationMenuInput input = categoryInput,
  }) {
    final Uri $url =
        Uri.parse('/navigation/${requestActiveId}/${requestRootId}');
    final $body = input;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<Category>, Category>($request);
  }
}
