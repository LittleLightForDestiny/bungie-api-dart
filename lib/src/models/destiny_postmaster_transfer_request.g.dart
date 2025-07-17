// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_postmaster_transfer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostmasterTransferRequest _$DestinyPostmasterTransferRequestFromJson(
        Map<String, dynamic> json) =>
    DestinyPostmasterTransferRequest()
      ..itemReferenceHash = (json['itemReferenceHash'] as num?)?.toInt()
      ..stackSize = (json['stackSize'] as num?)?.toInt()
      ..itemId = json['itemId'] as String?
      ..characterId = json['characterId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyPostmasterTransferRequestToJson(
        DestinyPostmasterTransferRequest instance) =>
    <String, dynamic>{
      'itemReferenceHash': instance.itemReferenceHash,
      'stackSize': instance.stackSize,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
    };
