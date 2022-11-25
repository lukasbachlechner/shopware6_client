import 'package:json_annotation/json_annotation.dart';

import '../types.dart';

import '../contracts/contracts.dart';
import 'models.dart';

part 'product_media.g.dart';

@JsonSerializable()
class ProductMedia implements Model {
  final ID? id;
  final ID? versionId;
  final ID productId;
  final ID? productVersionId;
  final ID mediaId;
  final int? position;
  // final customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final Media media;

  ProductMedia({
    this.id,
    this.versionId,
    required this.productId,
    this.productVersionId,
    required this.mediaId,
    this.position,
    required this.createdAt,
    this.updatedAt,
    required this.media,
  });

  factory ProductMedia.fromJson(Json json) => _$ProductMediaFromJson(json);

  @override
  Json toJson() => _$ProductMediaToJson(this);
}
