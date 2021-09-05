// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailSettings _$EmailSettingsFromJson(Map<String, dynamic> json) {
  return EmailSettings()
    ..optInDefinitions =
        (json['optInDefinitions'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, EmailOptInDefinition.fromJson(e as Map<String, dynamic>)),
    )
    ..subscriptionDefinitions =
        (json['subscriptionDefinitions'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, EmailSubscriptionDefinition.fromJson(e as Map<String, dynamic>)),
    )
    ..views = (json['views'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, EmailViewDefinition.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$EmailSettingsToJson(EmailSettings instance) =>
    <String, dynamic>{
      'optInDefinitions': instance.optInDefinitions,
      'subscriptionDefinitions': instance.subscriptionDefinitions,
      'views': instance.views,
    };
