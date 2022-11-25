import 'filter.dart';

class PrefixFilter extends Filter {
  PrefixFilter({
    required super.field,
    required super.value,
  }) : super(type: 'prefix');
}
