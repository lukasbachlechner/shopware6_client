// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criteria_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CriteriaInput _$CriteriaInputFromJson(Map<String, dynamic> json) =>
    CriteriaInput(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CriteriaInputToJson(CriteriaInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  writeNotNull('filter', instance.filter);
  return val;
}
