// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CartService extends CartService {
  _$CartService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CartService;

  @override
  Future<Response<Cart>> getOrCreateCart() {
    final Uri $url = Uri.parse('/checkout/cart');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Cart, Cart>($request);
  }

  @override
  Future<Response<Cart>> addItems(List<LineItem> items) {
    final Uri $url = Uri.parse('/checkout/cart/line-item');
    final $body = <String, dynamic>{'items': items};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Cart, Cart>($request);
  }

  @override
  Future<Response<Cart>> updateItems(List<LineItem> items) {
    final Uri $url = Uri.parse('/checkout/cart/line-item');
    final $body = <String, dynamic>{'items': items};
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Cart, Cart>($request);
  }

  @override
  Future<Response<Cart>> removeItems(List<ID> ids) {
    final Uri $url = Uri.parse('/checkout/cart/line-item');
    final $body = <String, dynamic>{'ids': ids};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Cart, Cart>($request);
  }
}
