// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_loadouts_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoadoutsComponent _$DestinyLoadoutsComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLoadoutsComponent()
      ..loadouts =
          (json['loadouts'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyLoadoutComponent.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyLoadoutsComponentToJson(
  DestinyLoadoutsComponent instance,
) => <String, dynamic>{
  'loadouts': instance.loadouts?.map((e) => e.toJson()).toList(),
};
