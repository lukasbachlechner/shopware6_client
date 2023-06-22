// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salutation_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalutationCriteriaResponse _$SalutationCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    SalutationCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Salutation.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: json['aggregations'],
    );

Map<String, dynamic> _$SalutationCriteriaResponseToJson(
        SalutationCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
