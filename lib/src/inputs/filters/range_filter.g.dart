// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RangeParams _$RangeParamsFromJson(Map<String, dynamic> json) => RangeParams(
      gte: json['gte'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      lt: json['lt'] as int?,
    );

Map<String, dynamic> _$RangeParamsToJson(RangeParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gte', instance.gte);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('lt', instance.lt);
  return val;
}
