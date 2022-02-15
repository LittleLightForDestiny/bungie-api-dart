// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_child_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationChildBlock _$DestinyPresentationChildBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyPresentationChildBlock()
      ..presentationNodeType =
          decodeDestinyPresentationNodeType(json['presentationNodeType'])
      ..parentPresentationNodeHashes =
          (json['parentPresentationNodeHashes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
      ..displayStyle =
          decodeDestinyPresentationDisplayStyle(json['displayStyle']);

Map<String, dynamic> _$DestinyPresentationChildBlockToJson(
        DestinyPresentationChildBlock instance) =>
    <String, dynamic>{
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'parentPresentationNodeHashes': instance.parentPresentationNodeHashes,
      'displayStyle':
          encodeDestinyPresentationDisplayStyle(instance.displayStyle),
    };
