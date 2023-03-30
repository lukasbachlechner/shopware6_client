import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest implements Model {
  final String username;
  final String password;

  LoginRequest({
    required this.username,
    required this.password,
  });

  factory LoginRequest.fromJson(Json json) => _$LoginRequestFromJson(json);

  @override
  Json toJson() => _$LoginRequestToJson(this);
}
