// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_postmaster_transfer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostmasterTransferRequest _$DestinyPostmasterTransferRequestFromJson(
    Map<String, dynamic> json) {
  return DestinyPostmasterTransferRequest()
    ..itemReferenceHash = json['itemReferenceHash'] as int
    ..stackSize = json['stackSize'] as int
    ..itemId = json['itemId'] as String
    ..characterId = json['characterId'] as String
    ..membershipType = json['membershipType'] as int;
}

Map<String, dynamic> _$DestinyPostmasterTransferRequestToJson(
        DestinyPostmasterTransferRequest instance) =>
    <String, dynamic>{
      'itemReferenceHash': instance.itemReferenceHash,
      'stackSize': instance.stackSize,
      'itemId': instance.itemId,
      'characterId': instance.characterId,
      'membershipType': instance.membershipType
    };
