// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSearchResponse _$UserSearchResponseFromJson(Map<String, dynamic> json) {
  return UserSearchResponse()
    ..searchResults = (json['searchResults'] as List<dynamic>?)
        ?.map(
            (e) => UserSearchResponseDetail.fromJson(e as Map<String, dynamic>))
        .toList()
    ..page = json['page'] as int?
    ..hasMore = json['hasMore'] as bool?;
}

Map<String, dynamic> _$UserSearchResponseToJson(UserSearchResponse instance) =>
    <String, dynamic>{
      'searchResults': instance.searchResults,
      'page': instance.page,
      'hasMore': instance.hasMore,
    };
