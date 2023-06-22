// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ContextService extends ContextService {
  _$ContextService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ContextService;

  @override
  Future<Response<CurrentContext>> fetchCurrentContext() {
    final Uri $url = Uri.parse('/context');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CurrentContext, CurrentContext>($request);
  }

  @override
  Future<Response<ContextPatchResponse>> modifyCurrentContext(
      ContextPatchRequest contextPatchRequest) {
    final Uri $url = Uri.parse('/context');
    final $body = contextPatchRequest;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContextPatchResponse, ContextPatchResponse>($request);
  }
}
