// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] == null ? null : ID.fromJson(json['id'] as String),
      versionId: json['versionId'] == null
          ? null
          : ID.fromJson(json['versionId'] as String),
      parentId: json['parentId'] == null
          ? null
          : ID.fromJson(json['parentId'] as String),
      parentVersionId: json['parentVersionId'] == null
          ? null
          : ID.fromJson(json['parentVersionId'] as String),
      manufacturerId: json['manufacturerId'] == null
          ? null
          : ID.fromJson(json['manufacturerId'] as String),
      productManufacturerVersionId: json['productManufacturerVersionId'] == null
          ? null
          : ID.fromJson(json['productManufacturerVersionId'] as String),
      unitId:
          json['unitId'] == null ? null : ID.fromJson(json['unitId'] as String),
      taxId: ID.fromJson(json['taxId'] as String),
      coverId: json['coverId'] == null
          ? null
          : ID.fromJson(json['coverId'] as String),
      productMediaVersionId: json['productMediaVersionId'] == null
          ? null
          : ID.fromJson(json['productMediaVersionId'] as String),
      deliveryTimeId: json['deliveryTimeId'] == null
          ? null
          : ID.fromJson(json['deliveryTimeId'] as String),
      canonicalProductId: json['canonicalProductId'] == null
          ? null
          : ID.fromJson(json['canonicalProductId'] as String),
      cmsPageId: json['cmsPageId'] == null
          ? null
          : ID.fromJson(json['cmsPageId'] as String),
      cmsPageVersionId: json['cmsPageVersionId'] == null
          ? null
          : ID.fromJson(json['cmsPageVersionId'] as String),
      productNumber: json['productNumber'] as String,
      stock: json['stock'] as int,
      restockTime: json['restockTime'] as int?,
      active: json['active'] as bool?,
      availableStock: json['availableStock'] as int?,
      available: json['available'] as bool?,
      isCloseout: json['isCloseout'] as bool?,
      displayGroup: json['displayGroup'] as String?,
      mainVariantId: json['mainVariantId'] == null
          ? null
          : ID.fromJson(json['mainVariantId'] as String),
      manufacturerNumber: json['manufacturerNumber'] as String?,
      ean: json['ean'] as String?,
      purchaseSteps: json['purchaseSteps'] as int?,
      maxPurchase: json['maxPurchase'] as int?,
      minPurchase: json['minPurchase'] as int?,
      purchaseUnit: (json['purchaseUnit'] as num?)?.toDouble(),
      referenceUnit: (json['referenceUnit'] as num?)?.toDouble(),
      shippingFree: json['shippingFree'] as bool?,
      markAsTopseller: json['markAsTopseller'] as bool?,
      weight: (json['weight'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      ratingAverage: (json['ratingAverage'] as num?)?.toDouble(),
      categoryTree: (json['categoryTree'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      propertyIds: (json['propertyIds'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      optionIds: (json['optionIds'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      streamIds: (json['streamIds'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      categoryIds: (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => ID.fromJson(e as String))
          .toList(),
      childCount: json['childCount'] as int?,
      sales: json['sales'] as int?,
      metaDescription: json['metaDescription'] as String?,
      name: Product.maybeGetTranslatedValue(json, 'name') as String,
      keywords: json['keywords'] as String?,
      description:
          Product.maybeGetTranslatedValue(json, 'description') as String?,
      metaTitle: json['metaTitle'] as String?,
      packUnit: json['packUnit'] as String?,
      packUnitPlural: json['packUnitPlural'] as String?,
      calculatedPrice: json['calculatedPrice'] == null
          ? null
          : CalculatedPrice.fromJson(
              json['calculatedPrice'] as Map<String, dynamic>),
      calculatedPrices: (json['calculatedPrices'] as List<dynamic>?)
          ?.map((e) => CalculatedPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      calculatedMaxPurchase: json['calculatedMaxPurchase'] as int?,
      calculatedCheapestPrice: json['calculatedCheapestPrice'] == null
          ? null
          : CalculatedPrice.fromJson(
              json['calculatedCheapestPrice'] as Map<String, dynamic>),
      isNew: json['isNew'] as bool?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      parent: json['parent'] == null
          ? null
          : Product.fromJson(json['parent'] as Map<String, dynamic>),
      children: json['children'] == null
          ? null
          : Product.fromJson(json['children'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : ProductMedia.fromJson(json['cover'] as Map<String, dynamic>),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => ProductMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'versionId': instance.versionId,
      'parentId': instance.parentId,
      'parentVersionId': instance.parentVersionId,
      'manufacturerId': instance.manufacturerId,
      'productManufacturerVersionId': instance.productManufacturerVersionId,
      'unitId': instance.unitId,
      'taxId': instance.taxId,
      'coverId': instance.coverId,
      'productMediaVersionId': instance.productMediaVersionId,
      'deliveryTimeId': instance.deliveryTimeId,
      'canonicalProductId': instance.canonicalProductId,
      'cmsPageId': instance.cmsPageId,
      'cmsPageVersionId': instance.cmsPageVersionId,
      'productNumber': instance.productNumber,
      'stock': instance.stock,
      'restockTime': instance.restockTime,
      'active': instance.active,
      'availableStock': instance.availableStock,
      'available': instance.available,
      'isCloseout': instance.isCloseout,
      'displayGroup': instance.displayGroup,
      'mainVariantId': instance.mainVariantId,
      'manufacturerNumber': instance.manufacturerNumber,
      'ean': instance.ean,
      'purchaseSteps': instance.purchaseSteps,
      'maxPurchase': instance.maxPurchase,
      'minPurchase': instance.minPurchase,
      'purchaseUnit': instance.purchaseUnit,
      'referenceUnit': instance.referenceUnit,
      'shippingFree': instance.shippingFree,
      'markAsTopseller': instance.markAsTopseller,
      'weight': instance.weight,
      'width': instance.width,
      'height': instance.height,
      'length': instance.length,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'ratingAverage': instance.ratingAverage,
      'categoryTree': instance.categoryTree,
      'propertyIds': instance.propertyIds,
      'optionIds': instance.optionIds,
      'streamIds': instance.streamIds,
      'categoryIds': instance.categoryIds,
      'childCount': instance.childCount,
      'sales': instance.sales,
      'metaDescription': instance.metaDescription,
      'name': instance.name,
      'keywords': instance.keywords,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'packUnit': instance.packUnit,
      'packUnitPlural': instance.packUnitPlural,
      'calculatedPrice': instance.calculatedPrice,
      'calculatedPrices': instance.calculatedPrices,
      'calculatedMaxPurchase': instance.calculatedMaxPurchase,
      'calculatedCheapestPrice': instance.calculatedCheapestPrice,
      'isNew': instance.isNew,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'parent': instance.parent,
      'children': instance.children,
      'cover': instance.cover,
      'media': instance.media,
    };
