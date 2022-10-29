import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'trending_entry_community_creation.g.dart';

@JsonSerializable()
class TrendingEntryCommunityCreation{	
	TrendingEntryCommunityCreation();

	
	@JsonKey(name:'media')
	String? media;
	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'author')
	String? author;
	
	@JsonKey(name:'authorMembershipId')
	String? authorMembershipId;
	
	@JsonKey(name:'postId')
	String? postId;
	
	@JsonKey(name:'body')
	String? body;
	
	@JsonKey(name:'upvotes')
	int? upvotes;

	factory TrendingEntryCommunityCreation.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryCommunityCreationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryCommunityCreationToJson(this);

	static Future<TrendingEntryCommunityCreation> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntryCommunityCreation>((json)=>TrendingEntryCommunityCreation.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}