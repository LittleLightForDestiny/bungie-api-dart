// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_action_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActionRequest _$DestinyActionRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActionRequest()
      ..membershipType = decodeBungieMembershipType(json['membershipType']);

Map<String, dynamic> _$DestinyActionRequestToJson(
  DestinyActionRequest instance,
) => <String, dynamic>{
  'membershipType': encodeBungieMembershipType(instance.membershipType),
};
