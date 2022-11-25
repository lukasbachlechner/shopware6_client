import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../types.dart';
import 'models.dart';

part 'media_thumbnail.g.dart';

@JsonSerializable()
class MediaThumbnail implements Model {
  final ID? id;
  final ID mediaId;
  final int width;
  final int height;
  final String? url;
  // final customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;

  MediaThumbnail({
    this.id,
    required this.mediaId,
    required this.width,
    required this.height,
    this.url,
    required this.createdAt,
    this.updatedAt,
  });

  factory MediaThumbnail.fromJson(Json json) => _$MediaThumbnailFromJson(json);

  @override
  Json toJson() => _$MediaThumbnailToJson(this);
}
