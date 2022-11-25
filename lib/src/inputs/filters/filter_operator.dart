enum FilterOperator {
  and('and'),
  or('or');

  final String value;

  const FilterOperator(this.value);

  @override
  String toString() => value;
}
