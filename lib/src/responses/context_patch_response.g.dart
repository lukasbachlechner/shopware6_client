// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_patch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContextPatchResponse _$ContextPatchResponseFromJson(
        Map<String, dynamic> json) =>
    ContextPatchResponse(
      contextToken: json['contextToken'] as String,
      redirectUrl: json['redirectUrl'] as String?,
    );

Map<String, dynamic> _$ContextPatchResponseToJson(
        ContextPatchResponse instance) =>
    <String, dynamic>{
      'contextToken': instance.contextToken,
      'redirectUrl': instance.redirectUrl,
    };
