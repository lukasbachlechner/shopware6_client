import 'package:json_annotation/json_annotation.dart';
import '../contracts/model.dart';
import '../types.dart';

part 'media_metadata.g.dart';

@JsonSerializable()
class MediaMetadata implements Model {
  final int? type;
  final int? width;
  final int? height;

  MediaMetadata({this.type, this.width, this.height});

  factory MediaMetadata.fromJson(Json json) => _$MediaMetadataFromJson(json);

  @override
  Json toJson() => _$MediaMetadataToJson(this);
}
