import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_info_card.dart';
import '../enums/destiny_game_versions.dart';

part 'destiny_profile_component.g.dart';

/// The most essential summary information about a Profile (in Destiny 1, we called these &quot;Accounts&quot;).
@JsonSerializable()
class DestinyProfileComponent{	
	DestinyProfileComponent();

	
	/// If you need to render the Profile (their platform name, icon, etc...) somewhere, this property contains that information.
	@JsonKey(name:'userInfo')
	UserInfoCard? userInfo;
	
	/// The last time the user played with any character on this Profile.
	@JsonKey(name:'dateLastPlayed')
	String? dateLastPlayed;
	
	/// If you want to know what expansions they own, this will contain that data.
	///  IMPORTANT: This field may not return the data you're interested in for Cross-Saved users. It returns the last ownership data we saw for this account - which is to say, what they've purchased on the platform on which they last played, which now could be a different platform.
	///  If you don't care about per-platform ownership and only care about whatever platform it seems they are playing on most recently, then this should be "good enough." Otherwise, this should be considered deprecated. We do not have a good alternative to provide at this time with platform specific ownership data for DLC.
	@JsonKey(name:'versionsOwned')
	DestinyGameVersions? versionsOwned;
	
	/// A list of the character IDs, for further querying on your part.
	@JsonKey(name:'characterIds')
	List<String>? characterIds;
	
	/// A list of seasons that this profile owns. Unlike versionsOwned, these stay with the profile across Platforms, and thus will be valid.
	///  It turns out that Stadia Pro subscriptions will give access to seasons but only while playing on Stadia and with an active subscription. So some users (users who have Stadia Pro but choose to play on some other platform) won't see these as available: it will be whatever seasons are available for the platform on which they last played.
	@JsonKey(name:'seasonHashes')
	List<int>? seasonHashes;
	
	/// A list of hashes for event cards that a profile owns. Unlike most values in versionsOwned, these stay with the profile across all platforms.
	@JsonKey(name:'eventCardHashesOwned')
	List<int>? eventCardHashesOwned;
	
	/// If populated, this is a reference to the season that is currently active.
	@JsonKey(name:'currentSeasonHash')
	int? currentSeasonHash;
	
	/// If populated, this is the reward power cap for the current season.
	@JsonKey(name:'currentSeasonRewardPowerCap')
	int? currentSeasonRewardPowerCap;
	
	/// If populated, this is a reference to the event card that is currently active.
	@JsonKey(name:'activeEventCardHash')
	int? activeEventCardHash;
	
	/// The 'current' Guardian Rank value, which starts at rank 1. This rank value will drop at the start of a new season to your 'renewed' rank from the previous season.
	@JsonKey(name:'currentGuardianRank')
	int? currentGuardianRank;
	
	/// The 'lifetime highest' Guardian Rank value, which starts at rank 1. This rank value should never go down.
	@JsonKey(name:'lifetimeHighestGuardianRank')
	int? lifetimeHighestGuardianRank;
	
	/// The seasonal 'renewed' Guardian Rank value. This rank value resets at the start of each new season to the highest-earned non-advanced rank.
	@JsonKey(name:'renewedGuardianRank')
	int? renewedGuardianRank;

	factory DestinyProfileComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileComponentToJson(this);

	static Future<DestinyProfileComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileComponent>((json)=>DestinyProfileComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}