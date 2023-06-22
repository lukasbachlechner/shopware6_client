// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_group_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyGroupOption _$PropertyGroupOptionFromJson(Map<String, dynamic> json) =>
    PropertyGroupOption(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      groupId: ID.fromJson(json['groupId'] as String),
      name: json['name'] as String,
      position: json['position'] as int?,
      colorHexCode: json['colorHexCode'] as String?,
      mediaId: json['mediaId'] == null
          ? null
          : ID.fromJson(json['mediaId'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertyGroupOptionToJson(
        PropertyGroupOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'name': instance.name,
      'position': instance.position,
      'colorHexCode': instance.colorHexCode,
      'mediaId': instance.mediaId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'media': instance.media,
    };
