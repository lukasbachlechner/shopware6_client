// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_criteria_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCriteriaResponse _$ProductCriteriaResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCriteriaResponse(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCriteriaResponseToJson(
        ProductCriteriaResponse instance) =>
    <String, dynamic>{
      'elements': instance.elements,
    };
