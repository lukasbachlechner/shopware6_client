// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageCriteriaResponse _$LanguageCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    LanguageCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: json['aggregations'],
    );

Map<String, dynamic> _$LanguageCriteriaResponseToJson(
        LanguageCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
