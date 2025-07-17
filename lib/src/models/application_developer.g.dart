// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationDeveloper _$ApplicationDeveloperFromJson(
  Map<String, dynamic> json,
) =>
    ApplicationDeveloper()
      ..role = decodeDeveloperRole(json['role'])
      ..apiEulaVersion = (json['apiEulaVersion'] as num?)?.toInt()
      ..user =
          json['user'] == null
              ? null
              : UserInfoCard.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$ApplicationDeveloperToJson(
  ApplicationDeveloper instance,
) => <String, dynamic>{
  'role': encodeDeveloperRole(instance.role),
  'apiEulaVersion': instance.apiEulaVersion,
  'user': instance.user?.toJson(),
};
