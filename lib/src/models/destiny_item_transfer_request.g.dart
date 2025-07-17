// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_transfer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTransferRequest _$DestinyItemTransferRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyItemTransferRequest()
      ..itemReferenceHash = (json['itemReferenceHash'] as num?)?.toInt()
      ..stackSize = (json['stackSize'] as num?)?.toInt()
      ..transferToVault = json['transferToVault'] as bool?
      ..itemId = json['itemId'] as String?
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyItemTransferRequestToJson(
        DestinyItemTransferRequest instance) =>
    <String, dynamic>{
      'itemReferenceHash': instance.itemReferenceHash,
      'stackSize': instance.stackSize,
      'transferToVault': instance.transferToVault,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
