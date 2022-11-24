import 'dart:io';

import 'package:shopware6_client/shopware6_client.dart';
import 'package:shopware6_client/src/services/category_service.dart';

void main() async {
  final client = ShopwareClient(
    baseUrl: 'http://localhost',
    swAccessKey: 'SWSCRERNSZNLRE1HRLRXBJHMZQ',
  );

  final service = client.getService<CategoryService>();

  final response = await service.getCategories();
  final firstCategoryId = response.body?.elements.first.id;

  /* if (!response.isSuccessful) {
    print(response.error);
  } else if (response.body != null) {
    for (var element in response.body!.elements) {
      print(
          "${element.name}: ${element.createdAt.difference(DateTime.now()).inDays} days ago");
    }
  } */
  print(firstCategoryId);
  print('\n---------------------------------------\n');

  final response2 = await service.getCategory(firstCategoryId!);
  print(response2.body);
  exit(0);
}
