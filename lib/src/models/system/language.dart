import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'language.g.dart';

@JsonSerializable()
class Language implements Model {
  final ID id;
  final ID localeId;
  final String name;

  Language({
    required this.id,
    required this.localeId,
    required this.name,
  });

  factory Language.fromJson(Json json) => _$LanguageFromJson(json);

  @override
  Json toJson() => _$LanguageToJson(this);
}
