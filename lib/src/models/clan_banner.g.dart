// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanBanner _$ClanBannerFromJson(Map<String, dynamic> json) => ClanBanner()
  ..decalId = (json['decalId'] as num?)?.toInt()
  ..decalColorId = (json['decalColorId'] as num?)?.toInt()
  ..decalBackgroundColorId = (json['decalBackgroundColorId'] as num?)?.toInt()
  ..gonfalonId = (json['gonfalonId'] as num?)?.toInt()
  ..gonfalonColorId = (json['gonfalonColorId'] as num?)?.toInt()
  ..gonfalonDetailId = (json['gonfalonDetailId'] as num?)?.toInt()
  ..gonfalonDetailColorId = (json['gonfalonDetailColorId'] as num?)?.toInt();

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
