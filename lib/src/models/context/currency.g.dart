// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      isoCode: json['isoCode'] as String,
      factor: (json['factor'] as num).toDouble(),
      symbol: json['symbol'] as String,
      shortName: json['shortName'] as String,
      name: json['name'] as String,
      position: json['position'] as int,
      isSystemDefault: json['isSystemDefault'] as bool,
      itemRounding:
          CashRounding.fromJson(json['itemRounding'] as Map<String, dynamic>),
      totalRounding:
          CashRounding.fromJson(json['totalRounding'] as Map<String, dynamic>),
      taxFreeFrom: (json['taxFreeFrom'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'id': instance.id,
      'isoCode': instance.isoCode,
      'factor': instance.factor,
      'symbol': instance.symbol,
      'shortName': instance.shortName,
      'name': instance.name,
      'position': instance.position,
      'isSystemDefault': instance.isSystemDefault,
      'itemRounding': instance.itemRounding,
      'totalRounding': instance.totalRounding,
      'taxFreeFrom': instance.taxFreeFrom,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
