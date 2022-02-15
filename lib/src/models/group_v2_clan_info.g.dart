// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_v2_clan_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupV2ClanInfo _$GroupV2ClanInfoFromJson(Map<String, dynamic> json) =>
    GroupV2ClanInfo()
      ..clanCallsign = json['clanCallsign'] as String?
      ..clanBannerData = json['clanBannerData'] == null
          ? null
          : ClanBanner.fromJson(json['clanBannerData'] as Map<String, dynamic>);

Map<String, dynamic> _$GroupV2ClanInfoToJson(GroupV2ClanInfo instance) =>
    <String, dynamic>{
      'clanCallsign': instance.clanCallsign,
      'clanBannerData': instance.clanBannerData,
    };
