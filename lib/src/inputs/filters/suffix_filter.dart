import 'filter.dart';

class SuffixFilter extends Filter {
  SuffixFilter({
    required super.field,
    required super.value,
  }) : super(type: 'suffix');
}
