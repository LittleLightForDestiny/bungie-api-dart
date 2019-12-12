import 'package:json_annotation/json_annotation.dart';


part 'trending_entry_community_stream.g.dart';

@JsonSerializable()
class TrendingEntryCommunityStream{
	
	TrendingEntryCommunityStream();

	factory TrendingEntryCommunityStream.fromJson(Map<String, dynamic> json) => _$TrendingEntryCommunityStreamFromJson(json);

	@JsonKey(name:'image')
	String image;
	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'partnershipIdentifier')
	String partnershipIdentifier;
	@JsonKey(name:'partnershipType')
	int partnershipType;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntryCommunityStreamToJson(this);
}