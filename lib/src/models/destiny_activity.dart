import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_activity_difficulty_tier.dart';
import 'destiny_challenge_status.dart';

part 'destiny_activity.g.dart';

/// Represents the &quot;Live&quot; data that we can obtain about a Character&#39;s status with a specific Activity. This will tell you whether the character can participate in the activity, as well as some other basic mutable information. 
/// Meant to be combined with static DestinyActivityDefinition data for a full picture of the Activity.
@JsonSerializable()
class DestinyActivity{	
	DestinyActivity();

	factory DestinyActivity.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityToJson(this);
	
	/// The hash identifier of the Activity. Use this to look up the DestinyActivityDefinition of the activity.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// If true, then the activity should have a "new" indicator in the Director UI.
	@JsonKey(name:'isNew')
	bool? isNew;
	
	/// If true, the user is allowed to lead a Fireteam into this activity.
	@JsonKey(name:'canLead')
	bool? canLead;
	
	/// If true, the user is allowed to join with another Fireteam in this activity.
	@JsonKey(name:'canJoin')
	bool? canJoin;
	
	/// If true, we both have the ability to know that the user has completed this activity and they have completed it. Unfortunately, we can't necessarily know this for all activities. As such, this should probably only be used if you already know in advance which specific activities you wish to check.
	@JsonKey(name:'isCompleted')
	bool? isCompleted;
	
	/// If true, the user should be able to see this activity.
	@JsonKey(name:'isVisible')
	bool? isVisible;
	
	/// The difficulty level of the activity, if applicable.
	@JsonKey(name:'displayLevel')
	int? displayLevel;
	
	/// The recommended light level for the activity, if applicable.
	@JsonKey(name:'recommendedLight')
	int? recommendedLight;
	
	/// A DestinyActivityDifficultyTier enum value indicating the difficulty of the activity.
	@JsonKey(name:'difficultyTier',unknownEnumValue:DestinyActivityDifficultyTier.ProtectedInvalidEnumValue)
	DestinyActivityDifficultyTier? difficultyTier;
	
	@JsonKey(name:'challenges')
	List<DestinyChallengeStatus>? challenges;
	
	/// If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.
	/// Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live.
	@JsonKey(name:'modifierHashes')
	List<int>? modifierHashes;
	
	/// The set of activity options for this activity, keyed by an identifier that's unique for this activity (not guaranteed to be unique between or across all activities, though should be unique for every *variant* of a given *conceptual* activity: for instance, the original D2 Raid has many variant DestinyActivityDefinitions. While other activities could potentially have the same option hashes, for any given D2 base Raid variant the hash will be unique).
	/// As a concrete example of this data, the hashes you get for Raids will correspond to the currently active "Challenge Mode".
	/// We don't have any human readable information for these, but saavy 3rd party app users could manually associate the key (a hash identifier for the "option" that is enabled/disabled) and the value (whether it's enabled or disabled presently)
	/// On our side, we don't necessarily even know what these are used for (the game designers know, but we don't), and we have no human readable data for them. In order to use them, you will have to do some experimentation.
	@JsonKey(name:'booleanActivityOptions')
	Map<String, bool>? booleanActivityOptions;
	
	/// If returned, this is the index into the DestinyActivityDefinition's "loadouts" property, indicating the currently active loadout requirements.
	@JsonKey(name:'loadoutRequirementIndex')
	int? loadoutRequirementIndex;
}