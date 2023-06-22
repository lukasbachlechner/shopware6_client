// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      currencyId: json['currencyId'] == null
          ? null
          : ID.fromJson(json['currencyId'] as String),
      net: (json['net'] as num?)?.toDouble(),
      gross: (json['gross'] as num?)?.toDouble(),
      linked: json['linked'] as bool?,
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'currencyId': instance.currencyId,
      'net': instance.net,
      'gross': instance.gross,
      'linked': instance.linked,
    };
