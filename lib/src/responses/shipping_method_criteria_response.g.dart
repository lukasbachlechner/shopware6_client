// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethodCriteriaResponse _$ShippingMethodCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    ShippingMethodCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      aggregations: json['aggregations'],
    );

Map<String, dynamic> _$ShippingMethodCriteriaResponseToJson(
        ShippingMethodCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'total': instance.total,
      'aggregations': instance.aggregations,
    };
