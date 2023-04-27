import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/inputs/inputs.dart';
import 'package:shopware6_client/src/models/models.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequest implements Model {
  final String email;
  final String password;
  final ID salutationId;
  final String firstName;
  final String lastName;
  final bool acceptedDataProtection;
  final String storefrontUrl;
  final bool guest;

  final AddressInput billingAddress;

  SignupRequest({
    required this.email,
    required this.password,
    required this.salutationId,
    required this.firstName,
    required this.lastName,
    required this.acceptedDataProtection,
    required this.storefrontUrl,
    this.guest = false,
    required this.billingAddress,
  });

  factory SignupRequest.fromJson(Json json) => _$SignupRequestFromJson(json);

  @override
  Json toJson() => _$SignupRequestToJson(this);
}
