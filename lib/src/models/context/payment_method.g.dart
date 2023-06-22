// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      distinguishableName: json['distinguishableName'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
      active: json['active'] as bool,
      afterOrderEnabled: json['afterOrderEnabled'] as bool,
      shortName: json['shortName'] as String,
      synchronous: json['synchronous'] as bool,
      asynchronous: json['asynchronous'] as bool,
      prepared: json['prepared'] as bool,
      refundable: json['refundable'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'distinguishableName': instance.distinguishableName,
      'description': instance.description,
      'position': instance.position,
      'active': instance.active,
      'afterOrderEnabled': instance.afterOrderEnabled,
      'shortName': instance.shortName,
      'synchronous': instance.synchronous,
      'asynchronous': instance.asynchronous,
      'prepared': instance.prepared,
      'refundable': instance.refundable,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
