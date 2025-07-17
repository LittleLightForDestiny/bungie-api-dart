// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_matchmaking_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityMatchmakingBlockDefinition
    _$DestinyActivityMatchmakingBlockDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyActivityMatchmakingBlockDefinition()
          ..isMatchmade = json['isMatchmade'] as bool?
          ..minParty = (json['minParty'] as num?)?.toInt()
          ..maxParty = (json['maxParty'] as num?)?.toInt()
          ..maxPlayers = (json['maxPlayers'] as num?)?.toInt()
          ..requiresGuardianOath = json['requiresGuardianOath'] as bool?;

Map<String, dynamic> _$DestinyActivityMatchmakingBlockDefinitionToJson(
        DestinyActivityMatchmakingBlockDefinition instance) =>
    <String, dynamic>{
      'isMatchmade': instance.isMatchmade,
      'minParty': instance.minParty,
      'maxParty': instance.maxParty,
      'maxPlayers': instance.maxPlayers,
      'requiresGuardianOath': instance.requiresGuardianOath,
    };
