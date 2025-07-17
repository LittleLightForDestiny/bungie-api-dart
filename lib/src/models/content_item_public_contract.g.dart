// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_item_public_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentItemPublicContract _$ContentItemPublicContractFromJson(
        Map<String, dynamic> json) =>
    ContentItemPublicContract()
      ..contentId = json['contentId'] as String?
      ..cType = json['cType'] as String?
      ..cmsPath = json['cmsPath'] as String?
      ..creationDate = json['creationDate'] as String?
      ..modifyDate = json['modifyDate'] as String?
      ..allowComments = json['allowComments'] as bool?
      ..hasAgeGate = json['hasAgeGate'] as bool?
      ..minimumAge = (json['minimumAge'] as num?)?.toInt()
      ..ratingImagePath = json['ratingImagePath'] as String?
      ..author = json['author'] == null
          ? null
          : GeneralUser.fromJson(json['author'] as Map<String, dynamic>)
      ..autoEnglishPropertyFallback =
          json['autoEnglishPropertyFallback'] as bool?
      ..properties = (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      )
      ..representations = (json['representations'] as List<dynamic>?)
          ?.map(
              (e) => ContentRepresentation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..tags =
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..commentSummary = json['commentSummary'] == null
          ? null
          : CommentSummary.fromJson(
              json['commentSummary'] as Map<String, dynamic>);

Map<String, dynamic> _$ContentItemPublicContractToJson(
        ContentItemPublicContract instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'cType': instance.cType,
      'cmsPath': instance.cmsPath,
      'creationDate': instance.creationDate,
      'modifyDate': instance.modifyDate,
      'allowComments': instance.allowComments,
      'hasAgeGate': instance.hasAgeGate,
      'minimumAge': instance.minimumAge,
      'ratingImagePath': instance.ratingImagePath,
      'author': instance.author?.toJson(),
      'autoEnglishPropertyFallback': instance.autoEnglishPropertyFallback,
      'properties': instance.properties,
      'representations':
          instance.representations?.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
      'commentSummary': instance.commentSummary?.toJson(),
    };
