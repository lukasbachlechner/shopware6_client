import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/inputs/navigation_menu_input.dart';

import '../models/category.dart';
import '../models/id.dart';
import '../responses/category_criteria_response.dart';

part "category_service.chopper.dart";

class NavigationId {
  const NavigationId.mainNavigation() : value = 'main-navigation';
  const NavigationId.footerNavigation() : value = 'footer-navigation';
  const NavigationId.serviceNavigation() : value = 'service-navigation';

  final String value;

  const NavigationId(this.value);

  @override
  String toString() => value;
}

const categoryInput = NavigationMenuInput(buildTree: false, depth: 1);

@ChopperApi()
abstract class CategoryService extends ChopperService {
  static CategoryService create([ChopperClient? client]) =>
      _$CategoryService(client);

  @Post(optionalBody: true, path: '/category')
  Future<Response<CategoryCriteriaResponse>> getCategories();

  @Post(optionalBody: true, path: '/category/{categoryId}')
  Future<Response<Category>> getCategory(
    @Path('categoryId') ID categoryId,
  );

  @Post(
    optionalBody: true,
    path: '/navigation/{requestActiveId}/{requestRootId}',
  )
  Future<Response<List<Category>>> getNavigationMenu(
    @Path('requestActiveId') NavigationId requestActiveId,
    @Path('requestRootId') NavigationId requestRootId, {
    @Body() NavigationMenuInput input = categoryInput,
  });
}
