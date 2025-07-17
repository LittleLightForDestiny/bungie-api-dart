// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_opt_in_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailOptInDefinition _$EmailOptInDefinitionFromJson(
        Map<String, dynamic> json) =>
    EmailOptInDefinition()
      ..name = json['name'] as String?
      ..value = json['value'] == null
          ? null
          : OptInFlags.fromJson((json['value'] as num).toInt())
      ..setByDefault = json['setByDefault'] as bool?
      ..dependentSubscriptions = (json['dependentSubscriptions']
              as List<dynamic>?)
          ?.map((e) =>
              EmailSubscriptionDefinition.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EmailOptInDefinitionToJson(
        EmailOptInDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value?.toJson(),
      'setByDefault': instance.setByDefault,
      'dependentSubscriptions':
          instance.dependentSubscriptions?.map((e) => e.toJson()).toList(),
    };
