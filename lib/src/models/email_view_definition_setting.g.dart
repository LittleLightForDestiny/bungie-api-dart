// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_view_definition_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailViewDefinitionSetting _$EmailViewDefinitionSettingFromJson(
  Map<String, dynamic> json,
) =>
    EmailViewDefinitionSetting()
      ..name = json['name'] as String?
      ..localization = (json['localization'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          EMailSettingLocalization.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..setByDefault = json['setByDefault'] as bool?
      ..optInAggregateValue =
          json['optInAggregateValue'] == null
              ? null
              : OptInFlags.fromJson(
                (json['optInAggregateValue'] as num).toInt(),
              )
      ..subscriptions =
          (json['subscriptions'] as List<dynamic>?)
              ?.map(
                (e) => EmailSubscriptionDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$EmailViewDefinitionSettingToJson(
  EmailViewDefinitionSetting instance,
) => <String, dynamic>{
  'name': instance.name,
  'localization': instance.localization?.map((k, e) => MapEntry(k, e.toJson())),
  'setByDefault': instance.setByDefault,
  'optInAggregateValue': instance.optInAggregateValue?.toJson(),
  'subscriptions': instance.subscriptions?.map((e) => e.toJson()).toList(),
};
