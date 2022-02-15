// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_unlock_expression_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyUnlockExpressionDefinition _$DestinyUnlockExpressionDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyUnlockExpressionDefinition()
      ..scope = decodeDestinyGatingScope(json['scope']);

Map<String, dynamic> _$DestinyUnlockExpressionDefinitionToJson(
        DestinyUnlockExpressionDefinition instance) =>
    <String, dynamic>{
      'scope': encodeDestinyGatingScope(instance.scope),
    };
