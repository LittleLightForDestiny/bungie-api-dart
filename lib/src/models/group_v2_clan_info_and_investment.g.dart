// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_v2_clan_info_and_investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupV2ClanInfoAndInvestment _$GroupV2ClanInfoAndInvestmentFromJson(
  Map<String, dynamic> json,
) =>
    GroupV2ClanInfoAndInvestment()
      ..d2ClanProgressions =
          (json['d2ClanProgressions'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              DestinyProgression.fromJson(e as Map<String, dynamic>),
            ),
          )
      ..clanCallsign = json['clanCallsign'] as String?
      ..clanBannerData =
          json['clanBannerData'] == null
              ? null
              : ClanBanner.fromJson(
                json['clanBannerData'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$GroupV2ClanInfoAndInvestmentToJson(
  GroupV2ClanInfoAndInvestment instance,
) => <String, dynamic>{
  'd2ClanProgressions': instance.d2ClanProgressions?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'clanCallsign': instance.clanCallsign,
  'clanBannerData': instance.clanBannerData?.toJson(),
};
