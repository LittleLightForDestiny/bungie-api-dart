// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_stats_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemStatsComponent
_$SingleComponentResponseOfDestinyItemStatsComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyItemStatsComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyItemStatsComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyItemStatsComponentToJson(
  SingleComponentResponseOfDestinyItemStatsComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
