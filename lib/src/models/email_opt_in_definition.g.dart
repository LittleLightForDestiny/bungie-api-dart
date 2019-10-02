// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_opt_in_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailOptInDefinition _$EmailOptInDefinitionFromJson(Map<String, dynamic> json) {
  return EmailOptInDefinition()
    ..name = json['name'] as String
    ..value = json['value'] as String
    ..setByDefault = json['setByDefault'] as bool
    ..dependentSubscriptions = (json['dependentSubscriptions'] as List)
        ?.map((e) => e == null
            ? null
            : EmailSubscriptionDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EmailOptInDefinitionToJson(
        EmailOptInDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'setByDefault': instance.setByDefault,
      'dependentSubscriptions': instance.dependentSubscriptions
    };
