// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_craftables_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCraftablesComponent _$DestinyCraftablesComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyCraftablesComponent()
      ..craftables = (json['craftables'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyCraftableComponent.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..craftingRootNodeHash = (json['craftingRootNodeHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyCraftablesComponentToJson(
  DestinyCraftablesComponent instance,
) => <String, dynamic>{
  'craftables': instance.craftables?.map((k, e) => MapEntry(k, e.toJson())),
  'craftingRootNodeHash': instance.craftingRootNodeHash,
};
