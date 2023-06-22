// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerGroup _$CustomerGroupFromJson(Map<String, dynamic> json) =>
    CustomerGroup(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      displayGross: json['displayGross'] as bool,
      registrationActive: json['registrationActive'] as bool,
      registrationTitle: json['registrationTitle'] as String?,
    );

Map<String, dynamic> _$CustomerGroupToJson(CustomerGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'displayGross': instance.displayGross,
      'registrationActive': instance.registrationActive,
      'registrationTitle': instance.registrationTitle,
    };
