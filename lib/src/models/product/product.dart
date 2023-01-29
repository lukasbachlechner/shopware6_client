import 'package:json_annotation/json_annotation.dart';

import '../../contracts/contracts.dart';
import '../../types.dart';
import '../models.dart';

part 'product.g.dart';

@JsonSerializable()
class Product implements Model {
  final ID? id;
  final ID? versionId;
  final ID? parentId;
  final ID? parentVersionId;
  final ID? manufacturerId;
  final ID? productManufacturerVersionId;
  final ID? unitId;
  final ID taxId;
  final ID? coverId;
  final ID? productMediaVersionId;
  final ID? deliveryTimeId;
  final ID? canonicalProductId;
  final ID? cmsPageId;
  final ID? cmsPageVersionId;
  final String productNumber;
  final int stock;
  final int? restockTime;
  final bool? active;
  final int? availableStock;
  final bool? available;
  final bool? isCloseout;
  final String? displayGroup;
  final ID? mainVariantId;
  final String? manufacturerNumber;
  final String? ean;
  final int? purchaseSteps;
  final int? maxPurchase;
  final int? minPurchase;
  final double? purchaseUnit;
  final double? referenceUnit;
  final bool? shippingFree;
  final bool? markAsTopseller;
  final double? weight;
  final double? width;
  final double? height;
  final double? length;
  final DateTime? releaseDate;
  final double? ratingAverage;
  final List<ID>? categoryTree;
  final List<ID>? propertyIds;
  final List<ID>? optionIds;
  final List<ID>? streamIds;
  final List<ID>? categoryIds;
  final int? childCount;
  final int? sales;
  final String? metaDescription;
  @JsonKey(
    readValue: maybeGetTranslatedValue,
  )
  final String name;
  final String? keywords;
  @JsonKey(
    readValue: maybeGetTranslatedValue,
  )
  final String? description;
  final String? metaTitle;
  final String? packUnit;
  final String? packUnitPlural;
// final customFields;
  final CalculatedPrice? calculatedPrice;
  final List<CalculatedPrice>? calculatedPrices;
  final int? calculatedMaxPurchase;
  final CalculatedPrice? calculatedCheapestPrice;
  final bool? isNew;
  final DateTime createdAt;
  final DateTime? updatedAt;
// final translated;
  final Product? parent;
  final Product? children;
  final ProductMedia? cover;
  final List<ProductMedia>? media;

  static String maybeGetTranslatedValue(
    Map<dynamic, dynamic> json,
    String key,
  ) {
    if (json[key] != null) {
      return json[key];
    } else if (json['translated'] != null && json['translated'][key] != null) {
      return json['translated'][key];
    } else {
      return '';
    }
  }

  const Product({
    this.id,
    this.versionId,
    this.parentId,
    this.parentVersionId,
    this.manufacturerId,
    this.productManufacturerVersionId,
    this.unitId,
    required this.taxId,
    this.coverId,
    this.productMediaVersionId,
    this.deliveryTimeId,
    this.canonicalProductId,
    this.cmsPageId,
    this.cmsPageVersionId,
    required this.productNumber,
    required this.stock,
    this.restockTime,
    this.active,
    this.availableStock,
    this.available,
    this.isCloseout,
    this.displayGroup,
    this.mainVariantId,
    this.manufacturerNumber,
    this.ean,
    this.purchaseSteps,
    this.maxPurchase,
    this.minPurchase,
    this.purchaseUnit,
    this.referenceUnit,
    this.shippingFree,
    this.markAsTopseller,
    this.weight,
    this.width,
    this.height,
    this.length,
    this.releaseDate,
    this.ratingAverage,
    this.categoryTree,
    this.propertyIds,
    this.optionIds,
    this.streamIds,
    this.categoryIds,
    this.childCount,
    this.sales,
    this.metaDescription,
    required this.name,
    this.keywords,
    this.description,
    this.metaTitle,
    this.packUnit,
    this.packUnitPlural,
    this.calculatedPrice,
    this.calculatedPrices,
    this.calculatedMaxPurchase,
    this.calculatedCheapestPrice,
    this.isNew,
    required this.createdAt,
    this.updatedAt,
    this.parent,
    this.children,
    this.cover,
    this.media,
  });

  factory Product.fromJson(Json json) => _$ProductFromJson(json);

  @override
  Json toJson() => _$ProductToJson(this);

  bool get isMainProduct => parentId == null;
}
