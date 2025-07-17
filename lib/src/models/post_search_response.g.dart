// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSearchResponse _$PostSearchResponseFromJson(Map<String, dynamic> json) =>
    PostSearchResponse()
      ..relatedPosts = (json['relatedPosts'] as List<dynamic>?)
          ?.map((e) => PostResponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..authors = (json['authors'] as List<dynamic>?)
          ?.map((e) => GeneralUser.fromJson(e as Map<String, dynamic>))
          .toList()
      ..groups = (json['groups'] as List<dynamic>?)
          ?.map((e) => GroupResponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..searchedTags = (json['searchedTags'] as List<dynamic>?)
          ?.map((e) => TagResponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..polls = (json['polls'] as List<dynamic>?)
          ?.map((e) => PollResponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..recruitmentDetails = (json['recruitmentDetails'] as List<dynamic>?)
          ?.map(
              (e) => ForumRecruitmentDetail.fromJson(e as Map<String, dynamic>))
          .toList()
      ..availablePages = (json['availablePages'] as num?)?.toInt()
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => PostResponse.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalResults = (json['totalResults'] as num?)?.toInt()
      ..hasMore = json['hasMore'] as bool?
      ..query = json['query'] == null
          ? null
          : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$PostSearchResponseToJson(PostSearchResponse instance) =>
    <String, dynamic>{
      'relatedPosts': instance.relatedPosts?.map((e) => e.toJson()).toList(),
      'authors': instance.authors?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'searchedTags': instance.searchedTags?.map((e) => e.toJson()).toList(),
      'polls': instance.polls?.map((e) => e.toJson()).toList(),
      'recruitmentDetails':
          instance.recruitmentDetails?.map((e) => e.toJson()).toList(),
      'availablePages': instance.availablePages,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query?.toJson(),
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
