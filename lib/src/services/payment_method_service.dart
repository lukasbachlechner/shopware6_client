import 'package:chopper/chopper.dart';

import '../responses/payment_method_criteria_response.dart';

part 'payment_method_service.chopper.dart';

@ChopperApi()
abstract class PaymentMethodService extends ChopperService {
  static PaymentMethodService create([ChopperClient? client]) =>
      _$PaymentMethodService(client);

  @Post(optionalBody: true, path: '/payment-method')
  Future<Response<PaymentMethodCriteriaResponse>> getPaymentMethods();
}
