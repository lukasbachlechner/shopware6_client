// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      mimeType: json['mimeType'] as String?,
      fileExtension: json['fileExtension'] as String?,
      uploadedAt: json['uploadedAt'] as String?,
      fileName: json['fileName'] as String?,
      fileSize: json['fileSize'] as int?,
      metaData: json['metaData'] == null
          ? null
          : MediaMetadata.fromJson(json['metaData'] as Map<String, dynamic>),
      alt: json['alt'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      hasFile: json['hasFile'] as bool?,
      private: json['private'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => MediaThumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'mimeType': instance.mimeType,
      'fileExtension': instance.fileExtension,
      'uploadedAt': instance.uploadedAt,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'metaData': instance.metaData,
      'alt': instance.alt,
      'title': instance.title,
      'url': instance.url,
      'hasFile': instance.hasFile,
      'private': instance.private,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'thumbnails': instance.thumbnails,
    };
