import 'filter.dart';

class EqualsFilter extends Filter {
  EqualsFilter({
    required super.field,
    required super.value,
  }) : super(type: 'equals');
}
