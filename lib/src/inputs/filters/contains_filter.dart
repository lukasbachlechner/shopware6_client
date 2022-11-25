import 'filter.dart';

class ContainsFilter extends Filter {
  ContainsFilter({
    required super.field,
    required super.value,
  }) : super(type: 'contains');
}
