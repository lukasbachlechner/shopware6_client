// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaThumbnail _$MediaThumbnailFromJson(Map<String, dynamic> json) =>
    MediaThumbnail(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      mediaId: ID.fromJson(json['mediaId'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MediaThumbnailToJson(MediaThumbnail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaId': instance.mediaId,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
