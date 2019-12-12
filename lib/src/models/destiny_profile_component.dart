import 'package:json_annotation/json_annotation.dart';

import 'user_info_card.dart';

part 'destiny_profile_component.g.dart';

/// The most essential summary information about a Profile (in Destiny 1, we called these &quot;Accounts&quot;).
@JsonSerializable()
class DestinyProfileComponent{
	
	DestinyProfileComponent();

	factory DestinyProfileComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileComponentFromJson(json);

	/// If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information.
	@JsonKey(name:'userInfo')
	UserInfoCard userInfo;
	/// The last time the user played with any character on this Profile.
	@JsonKey(name:'dateLastPlayed')
	String dateLastPlayed;
	/// If you want to know what expansions they own, this will contain that data.
	///  IMPORTANT: This field may not return the data you&#39;re interested in for Cross-Saved users. It returns the last ownership data we saw for this account - which is to say, what they&#39;ve purchased on the platform on which they last played, which now could be a different platform.
	///  If you don&#39;t care about per-platform ownership and only care about whatever platform it seems they are playing on most recently, then this should be &quot;good enough.&quot; Otherwise, this should be considered deprecated. We do not have a good alternative to provide at this time with platform specific ownership data for DLC.
	@JsonKey(name:'versionsOwned')
	int versionsOwned;
	/// A list of the character IDs, for further querying on your part.
	@JsonKey(name:'characterIds')
	List<String> characterIds;
	/// A list of seasons that this profile owns. Unlike versionsOwned, these stay with the profile across Platforms, and thus will be valid.
	@JsonKey(name:'seasonHashes')
	List<int> seasonHashes;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileComponentToJson(this);
}