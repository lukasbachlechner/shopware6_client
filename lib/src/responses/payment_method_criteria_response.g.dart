// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodCriteriaResponse _$PaymentMethodCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: (json['aggregations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$PaymentMethodCriteriaResponseToJson(
        PaymentMethodCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
