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
      postFilter: (json['postFilter'] as List<dynamic>?)
          ?.map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
      ids: (json['ids'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => Sort.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCountMode: json['total-count-mode'] as int? ?? 1,
      associations: json['associations'] as Map<String, dynamic>?,
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
  writeNotNull('postFilter', instance.postFilter);
  writeNotNull('ids', instance.ids);
  writeNotNull('sort', instance.sort);
  val['total-count-mode'] = instance.totalCountMode;
  writeNotNull('associations', instance.associations);
  return val;
}
