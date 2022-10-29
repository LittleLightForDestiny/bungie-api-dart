// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reward_availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewardAvailabilityModel _$UserRewardAvailabilityModelFromJson(
        Map<String, dynamic> json) =>
    UserRewardAvailabilityModel()
      ..availabilityModel = json['AvailabilityModel'] == null
          ? null
          : RewardAvailabilityModel.fromJson(
              json['AvailabilityModel'] as Map<String, dynamic>)
      ..isAvailableForUser = json['IsAvailableForUser'] as bool?
      ..isUnlockedForUser = json['IsUnlockedForUser'] as bool?;

Map<String, dynamic> _$UserRewardAvailabilityModelToJson(
        UserRewardAvailabilityModel instance) =>
    <String, dynamic>{
      'AvailabilityModel': instance.availabilityModel,
      'IsAvailableForUser': instance.isAvailableForUser,
      'IsUnlockedForUser': instance.isUnlockedForUser,
    };
