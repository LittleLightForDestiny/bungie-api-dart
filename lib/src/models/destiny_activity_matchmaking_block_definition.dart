
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_matchmaking_block_definition.g.dart';

/// Information about matchmaking and party size for the activity.
@JsonSerializable()
class DestinyActivityMatchmakingBlockDefinition {

	/// If TRUE, the activity is matchmade. Otherwise, it requires explicit forming of a party.
	@JsonKey(name:'isMatchmade')
	bool isMatchmade;

	/// The minimum # of people in the fireteam for the activity to launch.
	@JsonKey(name:'minParty')
	int minParty;

	/// The maximum # of people allowed in a Fireteam.
	@JsonKey(name:'maxParty')
	int maxParty;

	/// The maximum # of people allowed across all teams in the activity.
	@JsonKey(name:'maxPlayers')
	int maxPlayers;

	/// If true, you have to Solemnly Swear to be up to Nothing But Good(tm) to play.
	@JsonKey(name:'requiresGuardianOath')
	bool requiresGuardianOath;
	DestinyActivityMatchmakingBlockDefinition();

	factory DestinyActivityMatchmakingBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityMatchmakingBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityMatchmakingBlockDefinitionToJson(this);
}
