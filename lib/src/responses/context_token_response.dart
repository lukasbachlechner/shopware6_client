import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../types.dart';

part 'context_token_response.g.dart';

@JsonSerializable()
class ContextTokenResponse implements Model {
  final String contextToken;

  ContextTokenResponse({required this.contextToken});

  factory ContextTokenResponse.fromJson(Json json) =>
      _$ContextTokenResponseFromJson(json);

  @override
  Json toJson() => _$ContextTokenResponseToJson(this);
}
