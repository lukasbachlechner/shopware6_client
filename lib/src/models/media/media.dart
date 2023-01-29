import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';
import '../models.dart';

part 'media.g.dart';

@JsonSerializable()
class Media implements Model {
  final ID? id;
  final String? mimeType;
  final String? fileExtension;
  final String? uploadedAt;
  final String? fileName;
  final int? fileSize;
  final MediaMetadata? metaData;
  final String? alt;
  final String? title;
  final String? url;
  final bool? hasFile;
  final bool? private;
// final customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;
  // final String? translated;
  final List<MediaThumbnail>? thumbnails;

  const Media({
    this.id,
    this.mimeType,
    this.fileExtension,
    this.uploadedAt,
    this.fileName,
    this.fileSize,
    this.metaData,
    this.alt,
    this.title,
    this.url,
    this.hasFile,
    this.private,
    required this.createdAt,
    this.updatedAt,
    // this.translated,
    this.thumbnails,
  });

  factory Media.fromJson(Json json) => _$MediaFromJson(json);

  @override
  Json toJson() => _$MediaToJson(this);
}
