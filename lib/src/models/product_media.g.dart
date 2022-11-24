// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMedia _$ProductMediaFromJson(Map<String, dynamic> json) => ProductMedia(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      versionId: json['versionId'] == null
          ? null
          : ID.fromJson(json['versionId'] as String),
      productId: ID.fromJson(json['productId'] as String),
      productVersionId: json['productVersionId'] == null
          ? null
          : ID.fromJson(json['productVersionId'] as String),
      mediaId: ID.fromJson(json['mediaId'] as String),
      position: json['position'] as int?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductMediaToJson(ProductMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'versionId': instance.versionId,
      'productId': instance.productId,
      'productVersionId': instance.productVersionId,
      'mediaId': instance.mediaId,
      'position': instance.position,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'media': instance.media,
    };
