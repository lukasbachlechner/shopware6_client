// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyCriteriaResponse _$CurrencyCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    CurrencyCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: json['aggregations'],
    );

Map<String, dynamic> _$CurrencyCriteriaResponseToJson(
        CurrencyCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
