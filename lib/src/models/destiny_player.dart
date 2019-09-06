import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_player.g.dart';

@JsonSerializable()
class DestinyPlayer {

	/// Details about the player as they are known in game (platform display name, Destiny emblem)
	@JsonKey(name:'destinyUserInfo')
	UserInfoCard destinyUserInfo;

	/// Class of the character if applicable and available.
	@JsonKey(name:'characterClass')
	String characterClass;

	@JsonKey(name:'classHash')
	int classHash;

	@JsonKey(name:'raceHash')
	int raceHash;

	@JsonKey(name:'genderHash')
	int genderHash;

	/// Level of the character if available. Zero if it is not available.
	@JsonKey(name:'characterLevel')
	int characterLevel;

	/// Light Level of the character if available. Zero if it is not available.
	@JsonKey(name:'lightLevel')
	int lightLevel;

	/// Details about the player as they are known on BungieNet. This will be undefined if the player has marked their credential private, or does not have a BungieNet account.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard bungieNetUserInfo;

	/// Current clan name for the player. This value may be null or an empty string if the user does not have a clan.
	@JsonKey(name:'clanName')
	String clanName;

	/// Current clan tag for the player. This value may be null or an empty string if the user does not have a clan.
	@JsonKey(name:'clanTag')
	String clanTag;

	/// If we know the emblem&#39;s hash, this can be used to look up the player&#39;s emblem at the time of a match when receiving PGCR data, or otherwise their currently equipped emblem (if we are able to obtain it).
	@JsonKey(name:'emblemHash')
	int emblemHash;
	DestinyPlayer();

	factory DestinyPlayer.fromJson(Map<String, dynamic> json) => _$DestinyPlayerFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPlayerToJson(this);
}
