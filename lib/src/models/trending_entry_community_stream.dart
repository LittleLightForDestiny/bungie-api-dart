import 'package:json_annotation/json_annotation.dart';

import '../enums/partnership_type.dart';

part 'trending_entry_community_stream.g.dart';

@JsonSerializable()
class TrendingEntryCommunityStream{
	
	TrendingEntryCommunityStream();

	factory TrendingEntryCommunityStream.fromJson(Map<String, dynamic> json) {
		try{
			return _$TrendingEntryCommunityStreamFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'image')
	String image;
	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'partnershipIdentifier')
	String partnershipIdentifier;
	@JsonKey(name:'partnershipType',unknownEnumValue:PartnershipType.ProtectedInvalidEnumValue)
	PartnershipType partnershipType;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntryCommunityStreamToJson(this);
}