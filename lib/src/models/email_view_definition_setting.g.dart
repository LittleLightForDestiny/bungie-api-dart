// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_view_definition_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailViewDefinitionSetting _$EmailViewDefinitionSettingFromJson(
    Map<String, dynamic> json) {
  return EmailViewDefinitionSetting()
    ..name = json['name'] as String
    ..localization = (json['localization'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : EMailSettingLocalization.fromJson(e as Map<String, dynamic>)),
    )
    ..setByDefault = json['setByDefault'] as bool
    ..optInAggregateValue = json['optInAggregateValue'] as String
    ..subscriptions = (json['subscriptions'] as List)
        ?.map((e) => e == null
            ? null
            : EmailSubscriptionDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EmailViewDefinitionSettingToJson(
        EmailViewDefinitionSetting instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localization': instance.localization,
      'setByDefault': instance.setByDefault,
      'optInAggregateValue': instance.optInAggregateValue,
      'subscriptions': instance.subscriptions
    };
