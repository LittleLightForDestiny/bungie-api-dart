// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull_collection_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkullCollectionComponent
_$DestinyActivitySelectableSkullCollectionComponentFromJson(
  Map<String, dynamic> json,
) => DestinyActivitySelectableSkullCollectionComponent()
  ..selectableSkullCollectionHash =
      (json['selectableSkullCollectionHash'] as num?)?.toInt()
  ..selectableSkulls = (json['selectableSkulls'] as List<dynamic>?)
      ?.map(
        (e) =>
            DestinyActivitySkullComponent.fromJson(e as Map<String, dynamic>),
      )
      .toList();

Map<String, dynamic> _$DestinyActivitySelectableSkullCollectionComponentToJson(
  DestinyActivitySelectableSkullCollectionComponent instance,
) => <String, dynamic>{
  'selectableSkullCollectionHash': instance.selectableSkullCollectionHash,
  'selectableSkulls': instance.selectableSkulls
      ?.map((e) => e.toJson())
      .toList(),
};
