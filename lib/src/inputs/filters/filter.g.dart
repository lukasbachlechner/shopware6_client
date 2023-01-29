// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Filter _$FilterFromJson(Map<String, dynamic> json) => Filter(
      type: json['type'] as String,
      field: json['field'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'type': instance.type,
      'field': instance.field,
      'value': instance.value,
    };
