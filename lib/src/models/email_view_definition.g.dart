// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_view_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailViewDefinition _$EmailViewDefinitionFromJson(Map<String, dynamic> json) {
  return EmailViewDefinition()
    ..name = json['name'] as String
    ..viewSettings = (json['viewSettings'] as List)
        ?.map((e) => e == null
            ? null
            : EmailViewDefinitionSetting.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EmailViewDefinitionToJson(
        EmailViewDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'viewSettings': instance.viewSettings
    };
