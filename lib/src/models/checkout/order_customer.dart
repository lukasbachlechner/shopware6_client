import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../models/models.dart';
import '../../types.dart';

part 'order_customer.g.dart';

@JsonSerializable()
class OrderCustomer implements Model {
  final ID? id;
  final ID? versionId;
  final String email;
  final ID salutationId;
  final String firstName;
  final String lastName;
  final String? title;
  final String? customerNumber;
  final String? company;
  final List<String>? vatIds;
  final Salutation? salutation;
  final DateTime createdAt;
  final DateTime? updatedAt;

  OrderCustomer({
    this.id,
    this.versionId,
    required this.email,
    required this.salutationId,
    required this.firstName,
    required this.lastName,
    this.title,
    this.customerNumber,
    this.company,
    this.vatIds,
    this.salutation,
    required this.createdAt,
    this.updatedAt,
  });

  factory OrderCustomer.fromJson(Json json) => _$OrderCustomerFromJson(json);

  @override
  Json toJson() => _$OrderCustomerToJson(this);
}
