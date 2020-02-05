// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanBanner _$ClanBannerFromJson(Map<String, dynamic> json) {
  return ClanBanner()
    ..decalId = json['decalId'] as int
    ..decalColorId = json['decalColorId'] as int
    ..decalBackgroundColorId = json['decalBackgroundColorId'] as int
    ..gonfalonId = json['gonfalonId'] as int
    ..gonfalonColorId = json['gonfalonColorId'] as int
    ..gonfalonDetailId = json['gonfalonDetailId'] as int
    ..gonfalonDetailColorId = json['gonfalonDetailColorId'] as int;
}

Map<String, dynamic> _$ClanBannerToJson(ClanBanner instance) =>
    <String, dynamic>{
      'decalId': instance.decalId,
      'decalColorId': instance.decalColorId,
      'decalBackgroundColorId': instance.decalBackgroundColorId,
      'gonfalonId': instance.gonfalonId,
      'gonfalonColorId': instance.gonfalonColorId,
      'gonfalonDetailId': instance.gonfalonDetailId,
      'gonfalonDetailColorId': instance.gonfalonDetailColorId,
    };
