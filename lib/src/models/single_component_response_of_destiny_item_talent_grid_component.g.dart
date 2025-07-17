// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_talent_grid_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemTalentGridComponent
_$SingleComponentResponseOfDestinyItemTalentGridComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyItemTalentGridComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyItemTalentGridComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyItemTalentGridComponentToJson(
  SingleComponentResponseOfDestinyItemTalentGridComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
