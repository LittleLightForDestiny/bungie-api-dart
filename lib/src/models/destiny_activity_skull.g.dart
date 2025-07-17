// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_skull.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySkull _$DestinyActivitySkullFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySkull()
      ..hash = (json['hash'] as num?)?.toInt()
      ..skullIdentifierHash = (json['skullIdentifierHash'] as num?)?.toInt()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..skullOptions =
          (json['skullOptions'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivitySkullOption.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..dynamicUse = decodeDestinyActivitySkullDynamicUse(json['dynamicUse'])
      ..modifierPowerContribution =
          (json['modifierPowerContribution'] as num?)?.toInt()
      ..modifierMultiplierContribution =
          (json['modifierMultiplierContribution'] as num?)?.toDouble()
      ..skullExclusionGroupHash =
          (json['skullExclusionGroupHash'] as num?)?.toInt()
      ..hasUi = json['hasUi'] as bool?
      ..displayDescriptionOverrideForNavMode =
          json['displayDescriptionOverrideForNavMode'] as String?
      ..activityModifierDisplayCategory =
          decodeDestinyActivityModifierDisplayCategory(
            json['activityModifierDisplayCategory'],
          )
      ..activityModifierConnotation = decodeDestinyActivityModifierConnotation(
        json['activityModifierConnotation'],
      )
      ..displayInNavMode = json['displayInNavMode'] as bool?
      ..displayInActivitySelection =
          json['displayInActivitySelection'] as bool?;

Map<String, dynamic> _$DestinyActivitySkullToJson(
  DestinyActivitySkull instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'skullIdentifierHash': instance.skullIdentifierHash,
  'displayProperties': instance.displayProperties?.toJson(),
  'skullOptions': instance.skullOptions?.map((e) => e.toJson()).toList(),
  'dynamicUse': encodeDestinyActivitySkullDynamicUse(instance.dynamicUse),
  'modifierPowerContribution': instance.modifierPowerContribution,
  'modifierMultiplierContribution': instance.modifierMultiplierContribution,
  'skullExclusionGroupHash': instance.skullExclusionGroupHash,
  'hasUi': instance.hasUi,
  'displayDescriptionOverrideForNavMode':
      instance.displayDescriptionOverrideForNavMode,
  'activityModifierDisplayCategory':
      encodeDestinyActivityModifierDisplayCategory(
        instance.activityModifierDisplayCategory,
      ),
  'activityModifierConnotation': encodeDestinyActivityModifierConnotation(
    instance.activityModifierConnotation,
  ),
  'displayInNavMode': instance.displayInNavMode,
  'displayInActivitySelection': instance.displayInActivitySelection,
};
