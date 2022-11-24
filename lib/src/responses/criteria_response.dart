class CriteriaResponse<T> {
  final List<T> elements;
  final String? apiAlias;
  final String? entity;
  final int? total;
  final List<Map>? aggregations;
  final int? limit;

  CriteriaResponse({
    required this.elements,
    this.apiAlias,
    this.entity,
    this.total,
    this.aggregations,
    this.limit,
  });
}
