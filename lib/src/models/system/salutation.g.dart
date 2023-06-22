// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salutation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salutation _$SalutationFromJson(Map<String, dynamic> json) => Salutation(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      salutationKey: json['salutationKey'] as String,
      displayName: json['displayName'] as String,
      letterName: json['letterName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SalutationToJson(Salutation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salutationKey': instance.salutationKey,
      'displayName': instance.displayName,
      'letterName': instance.letterName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
