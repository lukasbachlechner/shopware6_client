import 'filter.dart';

class EqualsAnyFilter extends Filter {
  EqualsAnyFilter({
    required super.field,
    required super.value,
  }) : super(type: 'equalsAny');
}
