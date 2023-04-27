import 'package:json_annotation/json_annotation.dart';

import '../contracts/contracts.dart';
import '../models/models.dart';
import '../types.dart';

part 'address_input.g.dart';

@JsonSerializable()
class AddressInput implements Model {
  final ID? customerId;
  final ID countryId;
  final String firstName;
  final String lastName;
  final String city;
  final String street;
  final String? zipcode;

  AddressInput({
    this.customerId,
    required this.countryId,
    required this.firstName,
    required this.lastName,
    required this.city,
    required this.street,
    this.zipcode,
  });

  factory AddressInput.fromJson(Json json) => _$AddressInputFromJson(json);

  @override
  Json toJson() => _$AddressInputToJson(this);
}
