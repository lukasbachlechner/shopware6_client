import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'address.g.dart';

@JsonSerializable()
class Address implements Model {
  final ID? id;
  final ID? customerId;
  final ID countryId;
  final ID? countryStateId;
  final ID? salutationId;

  final String firstName;
  final String lastName;
  final String? zipcode;
  final String city;
  final String? company;
  final String street;
  final String? department;
  final String? title;
  final String? phoneNumber;
  final String? additionalAddressLine1;
  final String? additionalAddressLine2;
  // final dynamic customFields;
  final DateTime createdAt;
  final DateTime? updatedAt;

  final Country? country;
  // final CountryState? countryState;
  final Salutation? salutation;

  Address({
    this.id,
    required this.customerId,
    required this.countryId,
    this.countryStateId,
    this.salutationId,
    required this.firstName,
    required this.lastName,
    this.zipcode,
    required this.city,
    this.company,
    required this.street,
    this.department,
    this.title,
    this.phoneNumber,
    this.additionalAddressLine1,
    this.additionalAddressLine2,
    required this.createdAt,
    this.updatedAt,
    this.country,
    // this.countryState,
    this.salutation,
  });

  factory Address.fromJson(Json json) => _$AddressFromJson(json);

  @override
  Json toJson() => _$AddressToJson(this);
}
