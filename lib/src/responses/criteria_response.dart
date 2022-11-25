class CriteriaResponse<T> {
  final List<T> elements;
  final String? apiAlias;
  final String? entity;
  final int? total;
  final List<Map>? aggregations;
  final int? limit;
  final int? page;

  CriteriaResponse({
    required this.elements,
    this.apiAlias,
    this.entity,
    this.total,
    this.aggregations,
    this.limit,
    this.page,
  });
}
