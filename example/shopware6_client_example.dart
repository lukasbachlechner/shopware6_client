import 'dart:io';

import 'package:shopware6_client/shopware6_client.dart';
import 'package:shopware6_client/src/inputs/criteria_input.dart';
import 'package:shopware6_client/src/inputs/filters/filter_operator.dart';
import 'package:shopware6_client/src/inputs/filters/filters.dart';
import 'package:shopware6_client/src/inputs/filters/not_filter.dart';
import 'package:shopware6_client/src/services/services.dart';
import 'package:shopware6_client/src/shopware_client_base.dart';

void main() async {
  final client = ShopwareClient(
    baseUrl: 'http://localhost',
    swAccessKey: 'SWSCRERNSZNLRE1HRLRXBJHMZQ',
  );

  final productService = client.getService<ProductService>();

  final response2 = await productService.getProducts(
    CriteriaInput(filter: [
      MultiFilter(operator: FilterOperator.or, queries: [
        EqualsFilter(field: 'stock', value: 40),
        EqualsFilter(field: 'stock', value: 10),
      ]),
    ]),
  );
  if (!response2.isSuccessful) {
    print(response2.error);
  } else if (response2.body != null) {
    for (var element in response2.body!.elements) {
      print("${element.id}: ${element.stock}");
    }
  }
  exit(0);
}
