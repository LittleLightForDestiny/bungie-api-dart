// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_setting_subscription_localization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EMailSettingSubscriptionLocalization
    _$EMailSettingSubscriptionLocalizationFromJson(Map<String, dynamic> json) {
  return EMailSettingSubscriptionLocalization()
    ..unknownUserDescription = json['unknownUserDescription'] as String
    ..registeredUserDescription = json['registeredUserDescription'] as String
    ..unregisteredUserDescription =
        json['unregisteredUserDescription'] as String
    ..unknownUserActionText = json['unknownUserActionText'] as String
    ..knownUserActionText = json['knownUserActionText'] as String
    ..title = json['title'] as String
    ..description = json['description'] as String;
}

Map<String, dynamic> _$EMailSettingSubscriptionLocalizationToJson(
        EMailSettingSubscriptionLocalization instance) =>
    <String, dynamic>{
      'unknownUserDescription': instance.unknownUserDescription,
      'registeredUserDescription': instance.registeredUserDescription,
      'unregisteredUserDescription': instance.unregisteredUserDescription,
      'unknownUserActionText': instance.unknownUserActionText,
      'knownUserActionText': instance.knownUserActionText,
      'title': instance.title,
      'description': instance.description
    };
