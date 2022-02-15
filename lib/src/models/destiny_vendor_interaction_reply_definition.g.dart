// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_interaction_reply_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInteractionReplyDefinition
    _$DestinyVendorInteractionReplyDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyVendorInteractionReplyDefinition()
          ..itemRewardsSelection =
              decodeDestinyVendorInteractionRewardSelection(
                  json['itemRewardsSelection'])
          ..reply = json['reply'] as String?
          ..replyType = decodeDestinyVendorReplyType(json['replyType']);

Map<String, dynamic> _$DestinyVendorInteractionReplyDefinitionToJson(
        DestinyVendorInteractionReplyDefinition instance) =>
    <String, dynamic>{
      'itemRewardsSelection': encodeDestinyVendorInteractionRewardSelection(
          instance.itemRewardsSelection),
      'reply': instance.reply,
      'replyType': encodeDestinyVendorReplyType(instance.replyType),
    };
