// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_suggest_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSearchSuggestInput _$ProductSearchSuggestInputFromJson(
        Map<String, dynamic> json) =>
    ProductSearchSuggestInput(
      search: json['search'] as String,
      noAggregations: json['no-aggregations'] as String?,
      onlyAggregations: json['only-aggregations'] as String?,
    );

Map<String, dynamic> _$ProductSearchSuggestInputToJson(
    ProductSearchSuggestInput instance) {
  final val = <String, dynamic>{
    'search': instance.search,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('no-aggregations', instance.noAggregations);
  writeNotNull('only-aggregations', instance.onlyAggregations);
  return val;
}
