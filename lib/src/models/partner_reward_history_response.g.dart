// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_reward_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerRewardHistoryResponse _$PartnerRewardHistoryResponseFromJson(
  Map<String, dynamic> json,
) =>
    PartnerRewardHistoryResponse()
      ..partnerOffers =
          (json['PartnerOffers'] as List<dynamic>?)
              ?.map(
                (e) => PartnerOfferSkuHistoryResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..twitchDrops =
          (json['TwitchDrops'] as List<dynamic>?)
              ?.map(
                (e) => TwitchDropHistoryResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$PartnerRewardHistoryResponseToJson(
  PartnerRewardHistoryResponse instance,
) => <String, dynamic>{
  'PartnerOffers': instance.partnerOffers?.map((e) => e.toJson()).toList(),
  'TwitchDrops': instance.twitchDrops?.map((e) => e.toJson()).toList(),
};
