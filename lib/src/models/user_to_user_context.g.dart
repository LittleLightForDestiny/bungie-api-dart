// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_to_user_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserToUserContext _$UserToUserContextFromJson(Map<String, dynamic> json) {
  return UserToUserContext()
    ..isFollowing = json['isFollowing'] as bool
    ..ignoreStatus = json['ignoreStatus'] == null
        ? null
        : IgnoreResponse.fromJson(json['ignoreStatus'] as Map<String, dynamic>)
    ..globalIgnoreEndDate = json['globalIgnoreEndDate'] as String;
}

Map<String, dynamic> _$UserToUserContextToJson(UserToUserContext instance) =>
    <String, dynamic>{
      'isFollowing': instance.isFollowing,
      'ignoreStatus': instance.ignoreStatus,
      'globalIgnoreEndDate': instance.globalIgnoreEndDate,
    };
