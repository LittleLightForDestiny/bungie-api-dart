// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_error_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyErrorProfile _$DestinyErrorProfileFromJson(Map<String, dynamic> json) =>
    DestinyErrorProfile()
      ..errorCode = decodePlatformErrorCodes(json['errorCode'])
      ..infoCard =
          json['infoCard'] == null
              ? null
              : UserInfoCard.fromJson(json['infoCard'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyErrorProfileToJson(
  DestinyErrorProfile instance,
) => <String, dynamic>{
  'errorCode': encodePlatformErrorCodes(instance.errorCode),
  'infoCard': instance.infoCard?.toJson(),
};
