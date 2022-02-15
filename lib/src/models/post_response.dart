import 'package:json_annotation/json_annotation.dart';

import '../enums/forum_media_type.dart';
import '../enums/forum_post_popularity.dart';
import 'ignore_response.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse{	
	PostResponse();

	factory PostResponse.fromJson(Map<String, dynamic> json) {
		return _$PostResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PostResponseToJson(this);
	
	@JsonKey(name:'lastReplyTimestamp')
	String? lastReplyTimestamp;
	
	@JsonKey(name:'IsPinned')
	bool? isPinned;
	
	@JsonKey(name:'urlMediaType',fromJson:decodeForumMediaType,toJson:encodeForumMediaType)
	ForumMediaType? urlMediaType;
	
	@JsonKey(name:'thumbnail')
	String? thumbnail;
	
	@JsonKey(name:'popularity',fromJson:decodeForumPostPopularity,toJson:encodeForumPostPopularity)
	ForumPostPopularity? popularity;
	
	@JsonKey(name:'isActive')
	bool? isActive;
	
	@JsonKey(name:'isAnnouncement')
	bool? isAnnouncement;
	
	@JsonKey(name:'userRating')
	int? userRating;
	
	@JsonKey(name:'userHasRated')
	bool? userHasRated;
	
	@JsonKey(name:'userHasMutedPost')
	bool? userHasMutedPost;
	
	@JsonKey(name:'latestReplyPostId')
	String? latestReplyPostId;
	
	@JsonKey(name:'latestReplyAuthorId')
	String? latestReplyAuthorId;
	
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse? ignoreStatus;
	
	@JsonKey(name:'locale')
	String? locale;
}