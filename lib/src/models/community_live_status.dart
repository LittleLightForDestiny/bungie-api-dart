import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'community_live_status.g.dart';

@JsonSerializable()
class CommunityLiveStatus {

	@JsonKey(name:'dateStatusUpdated')
	String dateStatusUpdated;

	@JsonKey(name:'url')
	String url;

	@JsonKey(name:'partnershipIdentifier')
	String partnershipIdentifier;

	@JsonKey(name:'partnershipType')
	int partnershipType;

	@JsonKey(name:'thumbnail')
	String thumbnail;

	@JsonKey(name:'thumbnailSmall')
	String thumbnailSmall;

	@JsonKey(name:'thumbnailLarge')
	String thumbnailLarge;

	@JsonKey(name:'destinyCharacterId')
	String destinyCharacterId;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'userInfo')
	UserInfoCard userInfo;

	@JsonKey(name:'currentActivityHash')
	int currentActivityHash;

	@JsonKey(name:'dateLastPlayed')
	String dateLastPlayed;

	@JsonKey(name:'dateStreamStarted')
	String dateStreamStarted;

	@JsonKey(name:'locale')
	String locale;

	@JsonKey(name:'currentViewers')
	int currentViewers;

	@JsonKey(name:'followers')
	int followers;

	@JsonKey(name:'overallViewers')
	int overallViewers;

	@JsonKey(name:'isFeatured')
	bool isFeatured;

	@JsonKey(name:'title')
	String title;

	@JsonKey(name:'activityModeHash')
	int activityModeHash;

	@JsonKey(name:'dateFeatured')
	String dateFeatured;

	@JsonKey(name:'trendingValue')
	double trendingValue;

	@JsonKey(name:'isSubscribable')
	bool isSubscribable;
	CommunityLiveStatus();

	factory CommunityLiveStatus.fromJson(Map<String, dynamic> json) => _$CommunityLiveStatusFromJson(json);
	
	Map<String, dynamic> toJson() => _$CommunityLiveStatusToJson(this);
}
