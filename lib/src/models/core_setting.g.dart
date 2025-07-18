// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreSetting _$CoreSettingFromJson(Map<String, dynamic> json) =>
    CoreSetting()
      ..identifier = json['identifier'] as String?
      ..isDefault = json['isDefault'] as bool?
      ..displayName = json['displayName'] as String?
      ..summary = json['summary'] as String?
      ..imagePath = json['imagePath'] as String?
      ..childSettings =
          (json['childSettings'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$CoreSettingToJson(CoreSetting instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'isDefault': instance.isDefault,
      'displayName': instance.displayName,
      'summary': instance.summary,
      'imagePath': instance.imagePath,
      'childSettings': instance.childSettings?.map((e) => e.toJson()).toList(),
    };
