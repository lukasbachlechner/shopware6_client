// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_aggregation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyAggregation _$PropertyAggregationFromJson(Map<String, dynamic> json) =>
    PropertyAggregation(
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => PropertyGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertyAggregationToJson(
        PropertyAggregation instance) =>
    <String, dynamic>{
      'entities': instance.entities,
    };
