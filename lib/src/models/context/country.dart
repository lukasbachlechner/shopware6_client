import 'package:json_annotation/json_annotation.dart';
import 'package:shopware6_client/src/models/context/tax_free_config.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'country.g.dart';

@JsonSerializable()
class Country implements Model {
  final ID? id;
  final String name;
  final String iso;
  final int position;
  final bool taxFree;
  final bool active;
  final bool shippingAvailable;
  final String iso3;
  final bool displayStateInRegistration;
  final bool forceStateInRegistration;
  final bool companyTaxFree;
  final bool checkVatIdPattern;
  final String vatIdPattern;
  final bool vatIdRequired;
  final bool postalCodeRequired;
  final bool checkPostalCodePattern;
  final bool checkAdvancedPostalCodePattern;
  final String? advancedPostalCodePattern;
  final String defaultPostalCodePattern;

  final TaxFreeConfig customerTax;
  final TaxFreeConfig companyTax;

  final DateTime createdAt;
  final DateTime? updatedAt;

  Country({
    this.id,
    required this.name,
    required this.iso,
    required this.position,
    required this.taxFree,
    required this.active,
    required this.shippingAvailable,
    required this.iso3,
    required this.displayStateInRegistration,
    required this.forceStateInRegistration,
    required this.companyTaxFree,
    required this.checkVatIdPattern,
    required this.vatIdPattern,
    required this.vatIdRequired,
    required this.postalCodeRequired,
    required this.checkPostalCodePattern,
    required this.checkAdvancedPostalCodePattern,
    this.advancedPostalCodePattern,
    required this.defaultPostalCodePattern,
    required this.customerTax,
    required this.companyTax,
    required this.createdAt,
    this.updatedAt,
  });

  factory Country.fromJson(Json json) => _$CountryFromJson(json);

  @override
  Json toJson() => _$CountryToJson(this);
}
