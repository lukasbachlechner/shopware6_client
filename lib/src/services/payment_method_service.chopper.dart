// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PaymentMethodService extends PaymentMethodService {
  _$PaymentMethodService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaymentMethodService;

  @override
  Future<Response<PaymentMethodCriteriaResponse>> getPaymentMethods() {
    final Uri $url = Uri.parse('/payment-method');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<PaymentMethodCriteriaResponse,
        PaymentMethodCriteriaResponse>($request);
  }
}
