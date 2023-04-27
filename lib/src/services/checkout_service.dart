import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/models/checkout/order.dart';

part 'checkout_service.chopper.dart';

@ChopperApi()
abstract class CheckoutService extends ChopperService {
  static CheckoutService create([ChopperClient? client]) =>
      _$CheckoutService(client);

  @Post(path: '/checkout/order')
  Future<Response<Order>> createOrderFromCart();
}
