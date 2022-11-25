// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultiFilter _$MultiFilterFromJson(Map<String, dynamic> json) => MultiFilter(
      operator: $enumDecode(_$FilterOperatorEnumMap, json['operator']),
      queries: (json['queries'] as List<dynamic>)
          .map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MultiFilterToJson(MultiFilter instance) =>
    <String, dynamic>{
      'operator': _$FilterOperatorEnumMap[instance.operator]!,
      'queries': instance.queries,
    };

const _$FilterOperatorEnumMap = {
  FilterOperator.and: 'and',
  FilterOperator.or: 'or',
};
