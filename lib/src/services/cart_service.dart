import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/models/cart/cart.dart';
import 'package:shopware6_client/src/models/cart/line_item.dart';

import '../models/id.dart';

part 'cart_service.chopper.dart';

@ChopperApi()
abstract class CartService extends ChopperService {
  static CartService create([ChopperClient? client]) => _$CartService(client);

  @Get(path: '/checkout/cart')
  Future<Response<Cart>> getOrCreateCart();

  @Post(path: '/checkout/cart/line-item')
  Future<Response<Cart>> addItems(@Field('items') List<LineItem> items);

  @Patch(path: '/checkout/cart/line-item')
  Future<Response<Cart>> updateItems(@Field('items') List<LineItem> items);

  @Delete(path: '/checkout/cart/line-item')
  Future<Response<Cart>> removeItems(@Field('ids') List<ID> ids);
}
