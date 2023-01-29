import 'package:equatable/equatable.dart';

class ID extends Equatable {
  final String value;

  static const String validatorRegEx = r'^[0-9a-f]{32}$';

  ID._(this.value);

  factory ID(String value) {
    if (value.isEmpty || !RegExp(validatorRegEx).hasMatch(value)) {
      throw AssertionError(
          'Invalid ID. IDs must be of pattern ^[0-9a-f]{32}\$.');
    }
    return ID._(value);
  }

  factory ID.fromJson(String value) => ID(value);

  String toJson() => value;

  @override
  String toString() => value;

  @override
  List<String> get props => [value];
}
