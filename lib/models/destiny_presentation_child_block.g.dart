// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_child_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationChildBlock _$DestinyPresentationChildBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyPresentationChildBlock()
    ..presentationNodeType = json['presentationNodeType'] as int
    ..parentPresentationNodeHashes =
        (json['parentPresentationNodeHashes'] as List)
            ?.map((e) => e as int)
            ?.toList()
    ..displayStyle = json['displayStyle'] as int;
}

Map<String, dynamic> _$DestinyPresentationChildBlockToJson(
        DestinyPresentationChildBlock instance) =>
    <String, dynamic>{
      'presentationNodeType': instance.presentationNodeType,
      'parentPresentationNodeHashes': instance.parentPresentationNodeHashes,
      'displayStyle': instance.displayStyle
    };
