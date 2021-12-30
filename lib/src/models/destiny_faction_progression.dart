import 'package:json_annotation/json_annotation.dart';

import 'destiny_progression_reset_entry.dart';
import '../enums/destiny_progression_reward_item_state.dart';

part 'destiny_faction_progression.g.dart';

/// Mostly for historical purposes, we segregate Faction progressions from other progressions. This is just a DestinyProgression with a shortcut for finding the DestinyFactionDefinition of the faction related to the progression.
@JsonSerializable()
class DestinyFactionProgression{	
	DestinyFactionProgression();

	factory DestinyFactionProgression.fromJson(Map<String, dynamic> json) {
		return _$DestinyFactionProgressionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFactionProgressionToJson(this);
	
	/// The hash identifier of the Faction related to this progression. Use it to look up the DestinyFactionDefinition for more rendering info.
	@JsonKey(name:'factionHash')
	int? factionHash;
	
	/// The index of the Faction vendor that is currently available. Will be set to -1 if no vendors are available.
	@JsonKey(name:'factionVendorIndex')
	int? factionVendorIndex;
	
	/// The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data.
	@JsonKey(name:'progressionHash')
	int? progressionHash;
	
	/// The amount of progress earned today for this progression.
	@JsonKey(name:'dailyProgress')
	int? dailyProgress;
	
	/// If this progression has a daily limit, this is that limit.
	@JsonKey(name:'dailyLimit')
	int? dailyLimit;
	
	/// The amount of progress earned toward this progression in the current week.
	@JsonKey(name:'weeklyProgress')
	int? weeklyProgress;
	
	/// If this progression has a weekly limit, this is that limit.
	@JsonKey(name:'weeklyLimit')
	int? weeklyLimit;
	
	/// This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned)
	@JsonKey(name:'currentProgress')
	int? currentProgress;
	
	/// This is the level of the progression (for instance, the Character Level).
	@JsonKey(name:'level')
	int? level;
	
	/// This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable)
	@JsonKey(name:'levelCap')
	int? levelCap;
	
	/// Progressions define their levels in "steps". Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the "steps" property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.)
	@JsonKey(name:'stepIndex')
	int? stepIndex;
	
	/// The amount of progression (i.e. "Experience") needed to reach the next level of this Progression. Jeez, progression is such an overloaded word.
	@JsonKey(name:'progressToNextLevel')
	int? progressToNextLevel;
	
	/// The total amount of progression (i.e. "Experience") needed in order to reach the next level.
	@JsonKey(name:'nextLevelAt')
	int? nextLevelAt;
	
	/// The number of resets of this progression you've executed this season, if applicable to this progression.
	@JsonKey(name:'currentResetCount')
	int? currentResetCount;
	
	/// Information about historical resets of this progression, if there is any data for it.
	@JsonKey(name:'seasonResets')
	List<DestinyProgressionResetEntry>? seasonResets;
	
	/// Information about historical rewards for this progression, if there is any data for it.
	@JsonKey(name:'rewardItemStates')
	List<DestinyProgressionRewardItemState>? rewardItemStates;
}