// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_view_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailViewDefinition _$EmailViewDefinitionFromJson(Map<String, dynamic> json) =>
    EmailViewDefinition()
      ..name = json['name'] as String?
      ..viewSettings =
          (json['viewSettings'] as List<dynamic>?)
              ?.map(
                (e) => EmailViewDefinitionSetting.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$EmailViewDefinitionToJson(
  EmailViewDefinition instance,
) => <String, dynamic>{
  'name': instance.name,
  'viewSettings': instance.viewSettings?.map((e) => e.toJson()).toList(),
};
