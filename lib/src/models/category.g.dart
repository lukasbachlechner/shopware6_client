// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      versionId: json['versionId'] == null
          ? null
          : ID.fromJson(json['versionId'] as String),
      parentId: json['parentId'] == null
          ? null
          : ID.fromJson(json['parentId'] as String),
      parentVersionId: json['parentVersionId'] == null
          ? null
          : ID.fromJson(json['parentVersionId'] as String),
      afterCategoryId: json['afterCategoryId'] == null
          ? null
          : ID.fromJson(json['afterCategoryId'] as String),
      afterCategoryVersionId: json['afterCategoryVersionId'] == null
          ? null
          : ID.fromJson(json['afterCategoryVersionId'] as String),
      mediaId: json['mediaId'] == null
          ? null
          : ID.fromJson(json['mediaId'] as String),
      displayNestedProducts: json['displayNestedProducts'] as bool,
      level: json['level'] as int?,
      path: json['path'] as String?,
      childCount: json['childCount'] as int?,
      type: json['type'] as String,
      productAssignmentType: json['productAssignmentType'] as String,
      visible: json['visible'] as bool?,
      active: json['active'] as bool?,
      name: json['name'] as String,
      linkType: json['linkType'] as String?,
      internalLink: json['internalLink'] as String?,
      externalLink: json['externalLink'] as String?,
      linkNewTab: json['linkNewTab'] as bool?,
      description: json['description'] as String?,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      keywords: json['keywords'] as String?,
      cmsPageId: json['cmsPageId'] as String?,
      cmsPageVersionId: json['cmsPageVersionId'] == null
          ? null
          : ID.fromJson(json['cmsPageVersionId'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      parent: json['parent'] == null
          ? null
          : Category.fromJson(json['parent'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'versionId': instance.versionId,
      'parentId': instance.parentId,
      'parentVersionId': instance.parentVersionId,
      'afterCategoryId': instance.afterCategoryId,
      'afterCategoryVersionId': instance.afterCategoryVersionId,
      'mediaId': instance.mediaId,
      'displayNestedProducts': instance.displayNestedProducts,
      'level': instance.level,
      'path': instance.path,
      'childCount': instance.childCount,
      'type': instance.type,
      'productAssignmentType': instance.productAssignmentType,
      'visible': instance.visible,
      'active': instance.active,
      'name': instance.name,
      'linkType': instance.linkType,
      'internalLink': instance.internalLink,
      'externalLink': instance.externalLink,
      'linkNewTab': instance.linkNewTab,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'keywords': instance.keywords,
      'cmsPageId': instance.cmsPageId,
      'cmsPageVersionId': instance.cmsPageVersionId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'parent': instance.parent,
      'children': instance.children,
      'media': instance.media,
    };
