// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_manifest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyManifest _$DestinyManifestFromJson(Map<String, dynamic> json) {
  return DestinyManifest()
    ..version = json['version'] as String?
    ..mobileAssetContentPath = json['mobileAssetContentPath'] as String?
    ..mobileGearAssetDataBases =
        (json['mobileGearAssetDataBases'] as List<dynamic>?)
            ?.map((e) =>
                GearAssetDataBaseDefinition.fromJson(e as Map<String, dynamic>))
            .toList()
    ..mobileWorldContentPaths =
        (json['mobileWorldContentPaths'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..jsonWorldContentPaths =
        (json['jsonWorldContentPaths'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..jsonWorldComponentContentPaths =
        (json['jsonWorldComponentContentPaths'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
    )
    ..mobileClanBannerDatabasePath =
        json['mobileClanBannerDatabasePath'] as String?
    ..mobileGearCdn = (json['mobileGearCDN'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..iconImagePyramidInfo = (json['iconImagePyramidInfo'] as List<dynamic>?)
        ?.map((e) => ImagePyramidEntry.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyManifestToJson(DestinyManifest instance) =>
    <String, dynamic>{
      'version': instance.version,
      'mobileAssetContentPath': instance.mobileAssetContentPath,
      'mobileGearAssetDataBases': instance.mobileGearAssetDataBases,
      'mobileWorldContentPaths': instance.mobileWorldContentPaths,
      'jsonWorldContentPaths': instance.jsonWorldContentPaths,
      'jsonWorldComponentContentPaths': instance.jsonWorldComponentContentPaths,
      'mobileClanBannerDatabasePath': instance.mobileClanBannerDatabasePath,
      'mobileGearCDN': instance.mobileGearCdn,
      'iconImagePyramidInfo': instance.iconImagePyramidInfo,
    };
