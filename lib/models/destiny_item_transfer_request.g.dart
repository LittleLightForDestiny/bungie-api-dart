// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_transfer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTransferRequest _$DestinyItemTransferRequestFromJson(
    Map<String, dynamic> json) {
  return DestinyItemTransferRequest()
    ..itemReferenceHash = json['itemReferenceHash'] as int
    ..stackSize = json['stackSize'] as int
    ..transferToVault = json['transferToVault'] as bool
    ..itemId = json['itemId'] as String
    ..characterId = json['characterId'] as String
    ..membershipType = json['membershipType'] as int;
}

Map<String, dynamic> _$DestinyItemTransferRequestToJson(
        DestinyItemTransferRequest instance) =>
    <String, dynamic>{
      'itemReferenceHash': instance.itemReferenceHash,
      'stackSize': instance.stackSize,
      'transferToVault': instance.transferToVault,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': instance.membershipType
    };
