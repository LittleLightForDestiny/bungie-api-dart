// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_subscription_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailSubscriptionDefinition _$EmailSubscriptionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    EmailSubscriptionDefinition()
      ..name = json['name'] as String?
      ..localization = (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          EMailSettingSubscriptionLocalization.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      )
      ..value = json['value'] as String?;

Map<String, dynamic> _$EmailSubscriptionDefinitionToJson(
  EmailSubscriptionDefinition instance,
) => <String, dynamic>{
  'name': instance.name,
  'localization': instance.localization?.map((k, e) => MapEntry(k, e.toJson())),
  'value': instance.value,
};
