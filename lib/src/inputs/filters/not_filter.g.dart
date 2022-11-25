// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotFilter _$NotFilterFromJson(Map<String, dynamic> json) => NotFilter(
      operator: $enumDecode(_$FilterOperatorEnumMap, json['operator']),
      queries: (json['queries'] as List<dynamic>)
          .map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotFilterToJson(NotFilter instance) => <String, dynamic>{
      'operator': _$FilterOperatorEnumMap[instance.operator]!,
      'queries': instance.queries,
    };

const _$FilterOperatorEnumMap = {
  FilterOperator.and: 'and',
  FilterOperator.or: 'or',
};
