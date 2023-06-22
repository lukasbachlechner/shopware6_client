// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sort _$SortFromJson(Map<String, dynamic> json) => Sort(
      field: json['field'] as String,
      order: $enumDecode(_$SortDirectionEnumMap, json['order']),
      naturalSorting: json['naturalSorting'] as bool? ?? false,
    );

Map<String, dynamic> _$SortToJson(Sort instance) => <String, dynamic>{
      'field': instance.field,
      'order': _$SortDirectionEnumMap[instance.order]!,
      'naturalSorting': instance.naturalSorting,
    };

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.desc: 'desc',
};
