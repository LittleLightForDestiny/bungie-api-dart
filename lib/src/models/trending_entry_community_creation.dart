
import 'package:json_annotation/json_annotation.dart';
part 'trending_entry_community_creation.g.dart';

@JsonSerializable()
class TrendingEntryCommunityCreation {

	@JsonKey(name:'media')
	String media;

	@JsonKey(name:'title')
	String title;

	@JsonKey(name:'author')
	String author;

	@JsonKey(name:'authorMembershipId')
	String authorMembershipId;

	@JsonKey(name:'postId')
	String postId;

	@JsonKey(name:'body')
	String body;

	@JsonKey(name:'upvotes')
	int upvotes;
	TrendingEntryCommunityCreation();

	factory TrendingEntryCommunityCreation.fromJson(Map<String, dynamic> json) => _$TrendingEntryCommunityCreationFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingEntryCommunityCreationToJson(this);
}
