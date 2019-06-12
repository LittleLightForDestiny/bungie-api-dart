// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_error_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyErrorProfile _$DestinyErrorProfileFromJson(Map<String, dynamic> json) {
  return DestinyErrorProfile()
    ..errorCode = json['errorCode'] as int
    ..infoCard = json['infoCard'] == null
        ? null
        : UserInfoCard.fromJson(json['infoCard'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyErrorProfileToJson(
        DestinyErrorProfile instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'infoCard': instance.infoCard
    };
