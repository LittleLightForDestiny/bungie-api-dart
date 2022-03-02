// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_craftables_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCraftablesComponent _$DestinyCraftablesComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCraftablesComponent()
      ..craftables = (json['craftables'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyCraftableComponent.fromJson(e as Map<String, dynamic>)),
      )
      ..craftingRootNodeHash = json['craftingRootNodeHash'] as int?;

Map<String, dynamic> _$DestinyCraftablesComponentToJson(
        DestinyCraftablesComponent instance) =>
    <String, dynamic>{
      'craftables': instance.craftables,
      'craftingRootNodeHash': instance.craftingRootNodeHash,
    };
