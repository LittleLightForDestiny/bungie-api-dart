// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_interaction_reply_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInteractionReplyDefinition
    _$DestinyVendorInteractionReplyDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorInteractionReplyDefinition()
    ..itemRewardsSelection = json['itemRewardsSelection'] as int
    ..reply = json['reply'] as String
    ..replyType = json['replyType'] as int;
}

Map<String, dynamic> _$DestinyVendorInteractionReplyDefinitionToJson(
        DestinyVendorInteractionReplyDefinition instance) =>
    <String, dynamic>{
      'itemRewardsSelection': instance.itemRewardsSelection,
      'reply': instance.reply,
      'replyType': instance.replyType
    };
