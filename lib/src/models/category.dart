// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../contracts/model.dart';
import '../types.dart';
import 'id.dart';
import 'media.dart';

part 'category.g.dart';

@JsonSerializable()
class Category implements Model {
  final ID? id;
  final ID? versionId;
  final ID? parentId;
  final ID? parentVersionId;
  final ID? afterCategoryId;
  final ID? afterCategoryVersionId;
  final ID? mediaId;
  final bool displayNestedProducts;
  // final Breadcrumb? breadcrumb;
  final int? level;
  final String? path;
  final int? childCount;
  final String type;
  final String productAssignmentType;
  final bool? visible;
  final bool? active;
  final String name;
  // Breadcrumb? customFields;
  final String? linkType;
  final String? internalLink;
  final String? externalLink;
  final bool? linkNewTab;
  final String? description;
  final String? metaTitle;
  final String? metaDescription;
  final String? keywords;
  final String? cmsPageId;
  final ID? cmsPageVersionId;
  final DateTime createdAt;
  final DateTime? updatedAt;
  // final Breadcrumb? translated;
  final Category? parent;
  final List<Category>? children;
  final Media? media;
  // final CmsPage? cmsPage;
  // final SeoUrls? seoUrls;

  Category({
    this.id,
    this.versionId,
    this.parentId,
    this.parentVersionId,
    this.afterCategoryId,
    this.afterCategoryVersionId,
    this.mediaId,
    required this.displayNestedProducts,
    // this.breadcrumb,
    this.level,
    this.path,
    this.childCount,
    required this.type,
    required this.productAssignmentType,
    this.visible,
    this.active,
    required this.name,
    // this.customFields,
    this.linkType,
    this.internalLink,
    this.externalLink,
    this.linkNewTab,
    this.description,
    this.metaTitle,
    this.metaDescription,
    this.keywords,
    this.cmsPageId,
    this.cmsPageVersionId,
    required this.createdAt,
    this.updatedAt,
    // this.translated,
    this.parent,
    this.children,
    this.media,
    // this.cmsPage,
    // this.seoUrls,
  });

  factory Category.fromJson(Json json) => _$CategoryFromJson(json);

  @override
  Json toJson() => _$CategoryToJson(this);

  @override
  String toString() {
    return 'Category(id: $id, versionId: $versionId, parentId: $parentId, parentVersionId: $parentVersionId, afterCategoryId: $afterCategoryId, afterCategoryVersionId: $afterCategoryVersionId, mediaId: $mediaId, displayNestedProducts: $displayNestedProducts, level: $level, path: $path, childCount: $childCount, type: $type, productAssignmentType: $productAssignmentType, visible: $visible, active: $active, name: $name, linkType: $linkType, internalLink: $internalLink, externalLink: $externalLink, linkNewTab: $linkNewTab, description: $description, metaTitle: $metaTitle, metaDescription: $metaDescription, keywords: $keywords, cmsPageId: $cmsPageId, cmsPageVersionId: $cmsPageVersionId, createdAt: $createdAt, updatedAt: $updatedAt, parent: $parent, children: $children)';
  }
}
