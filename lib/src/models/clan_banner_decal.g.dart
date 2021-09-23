// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_banner_decal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanBannerDecal _$ClanBannerDecalFromJson(Map<String, dynamic> json) {
  return ClanBannerDecal()
    ..identifier = json['identifier'] as String?
    ..foregroundPath = json['foregroundPath'] as String?
    ..backgroundPath = json['backgroundPath'] as String?;
}

Map<String, dynamic> _$ClanBannerDecalToJson(ClanBannerDecal instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'foregroundPath': instance.foregroundPath,
      'backgroundPath': instance.backgroundPath,
    };
