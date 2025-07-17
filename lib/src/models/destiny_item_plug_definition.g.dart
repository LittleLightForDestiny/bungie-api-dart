// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugDefinition _$DestinyItemPlugDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemPlugDefinition()
      ..insertionRules =
          (json['insertionRules'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPlugRuleDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..plugCategoryIdentifier = json['plugCategoryIdentifier'] as String?
      ..plugCategoryHash = (json['plugCategoryHash'] as num?)?.toInt()
      ..onActionRecreateSelf = json['onActionRecreateSelf'] as bool?
      ..insertionMaterialRequirementHash =
          (json['insertionMaterialRequirementHash'] as num?)?.toInt()
      ..previewItemOverrideHash =
          (json['previewItemOverrideHash'] as num?)?.toInt()
      ..enabledMaterialRequirementHash =
          (json['enabledMaterialRequirementHash'] as num?)?.toInt()
      ..enabledRules =
          (json['enabledRules'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPlugRuleDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..uiPlugLabel = json['uiPlugLabel'] as String?
      ..plugStyle =
          json['plugStyle'] == null
              ? null
              : PlugUiStyles.fromJson((json['plugStyle'] as num).toInt())
      ..plugAvailability = decodePlugAvailabilityMode(json['plugAvailability'])
      ..alternateUiPlugLabel = json['alternateUiPlugLabel'] as String?
      ..alternatePlugStyle =
          json['alternatePlugStyle'] == null
              ? null
              : PlugUiStyles.fromJson(
                (json['alternatePlugStyle'] as num).toInt(),
              )
      ..isDummyPlug = json['isDummyPlug'] as bool?
      ..parentItemOverride =
          json['parentItemOverride'] == null
              ? null
              : DestinyParentItemOverride.fromJson(
                json['parentItemOverride'] as Map<String, dynamic>,
              )
      ..energyCapacity =
          json['energyCapacity'] == null
              ? null
              : DestinyEnergyCapacityEntry.fromJson(
                json['energyCapacity'] as Map<String, dynamic>,
              )
      ..energyCost =
          json['energyCost'] == null
              ? null
              : DestinyEnergyCostEntry.fromJson(
                json['energyCost'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyItemPlugDefinitionToJson(
  DestinyItemPlugDefinition instance,
) => <String, dynamic>{
  'insertionRules': instance.insertionRules?.map((e) => e.toJson()).toList(),
  'plugCategoryIdentifier': instance.plugCategoryIdentifier,
  'plugCategoryHash': instance.plugCategoryHash,
  'onActionRecreateSelf': instance.onActionRecreateSelf,
  'insertionMaterialRequirementHash': instance.insertionMaterialRequirementHash,
  'previewItemOverrideHash': instance.previewItemOverrideHash,
  'enabledMaterialRequirementHash': instance.enabledMaterialRequirementHash,
  'enabledRules': instance.enabledRules?.map((e) => e.toJson()).toList(),
  'uiPlugLabel': instance.uiPlugLabel,
  'plugStyle': instance.plugStyle?.toJson(),
  'plugAvailability': encodePlugAvailabilityMode(instance.plugAvailability),
  'alternateUiPlugLabel': instance.alternateUiPlugLabel,
  'alternatePlugStyle': instance.alternatePlugStyle?.toJson(),
  'isDummyPlug': instance.isDummyPlug,
  'parentItemOverride': instance.parentItemOverride?.toJson(),
  'energyCapacity': instance.energyCapacity?.toJson(),
  'energyCost': instance.energyCost?.toJson(),
};
