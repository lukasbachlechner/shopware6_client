// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_rounding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashRounding _$CashRoundingFromJson(Map<String, dynamic> json) => CashRounding(
      decimals: json['decimals'] as int,
      interval: (json['interval'] as num).toDouble(),
      roundForNet: json['roundForNet'] as bool,
    );

Map<String, dynamic> _$CashRoundingToJson(CashRounding instance) =>
    <String, dynamic>{
      'decimals': instance.decimals,
      'interval': instance.interval,
      'roundForNet': instance.roundForNet,
    };
