// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CheckoutService extends CheckoutService {
  _$CheckoutService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CheckoutService;

  @override
  Future<Response<Order>> createOrderFromCart() {
    final Uri $url = Uri.parse('/checkout/order');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Order, Order>($request);
  }
}
