import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';

import '../types.dart';

part 'navigation_menu_input.g.dart';

@JsonSerializable()
class NavigationMenuInput implements Model {
  final bool buildTree;
  final int depth;

  const NavigationMenuInput({required this.buildTree, required this.depth});

  factory NavigationMenuInput.fromJson(Json json) =>
      _$NavigationMenuInputFromJson(json);

  @override
  Json toJson() => _$NavigationMenuInputToJson(this);
}
