// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_net_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieNetToken _$BungieNetTokenFromJson(Map<String, dynamic> json) =>
    BungieNetToken(
      accessToken: json['access_token'] as String,
      expiresIn: json['expires_in'] as int,
      refreshToken: json['refresh_token'] as String,
      refreshExpiresIn: json['refresh_expires_in'] as int,
      membershipId: json['membership_id'] as String,
    );

Map<String, dynamic> _$BungieNetTokenToJson(BungieNetToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'refresh_expires_in': instance.refreshExpiresIn,
      'membership_id': instance.membershipId,
    };
