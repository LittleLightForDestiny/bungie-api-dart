// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_investment_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInvestmentStatDefinition
_$DestinyItemInvestmentStatDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyItemInvestmentStatDefinition()
      ..statTypeHash = (json['statTypeHash'] as num?)?.toInt()
      ..value = (json['value'] as num?)?.toInt()
      ..isConditionallyActive = json['isConditionallyActive'] as bool?;

Map<String, dynamic> _$DestinyItemInvestmentStatDefinitionToJson(
  DestinyItemInvestmentStatDefinition instance,
) => <String, dynamic>{
  'statTypeHash': instance.statTypeHash,
  'value': instance.value,
  'isConditionallyActive': instance.isConditionallyActive,
};
