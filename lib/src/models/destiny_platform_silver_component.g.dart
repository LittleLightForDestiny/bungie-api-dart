// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_platform_silver_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlatformSilverComponent _$DestinyPlatformSilverComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPlatformSilverComponent()
      ..platformSilver = (json['platformSilver'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyItemComponent.fromJson(e as Map<String, dynamic>),
        ),
      );

Map<String, dynamic> _$DestinyPlatformSilverComponentToJson(
  DestinyPlatformSilverComponent instance,
) => <String, dynamic>{
  'platformSilver': instance.platformSilver?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
};
