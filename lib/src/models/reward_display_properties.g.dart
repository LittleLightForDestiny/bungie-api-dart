// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_display_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardDisplayProperties _$RewardDisplayPropertiesFromJson(
        Map<String, dynamic> json) =>
    RewardDisplayProperties()
      ..name = json['Name'] as String?
      ..description = json['Description'] as String?
      ..imagePath = json['ImagePath'] as String?;

Map<String, dynamic> _$RewardDisplayPropertiesToJson(
        RewardDisplayProperties instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Description': instance.description,
      'ImagePath': instance.imagePath,
    };
