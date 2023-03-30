import 'package:json_annotation/json_annotation.dart';

import '../types.dart';

part 'context_patch_response.g.dart';

@JsonSerializable()
class ContextPatchResponse {
  final String contextToken;
  final String? redirectUrl;

  ContextPatchResponse({
    required this.contextToken,
    this.redirectUrl,
  });

  factory ContextPatchResponse.fromJson(Json json) =>
      _$ContextPatchResponseFromJson(json);
}
