// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryCriteriaResponse _$CountryCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    CountryCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: json['aggregations'],
    );

Map<String, dynamic> _$CountryCriteriaResponseToJson(
        CountryCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
