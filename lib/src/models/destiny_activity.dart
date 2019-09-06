
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity.g.dart';

/// Represents the &quot;Live&quot; data that we can obtain about a Character&#39;s status with a specific Activity. This will tell you whether the character can participate in the activity, as well as some other basic mutable information. 
/// Meant to be combined with static DestinyActivityDefinition data for a full picture of the Activity.
@JsonSerializable()
class DestinyActivity {

	/// The hash identifier of the Activity. Use this to look up the DestinyActivityDefinition of the activity.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// If true, then the activity should have a &quot;new&quot; indicator in the Director UI.
	@JsonKey(name:'isNew')
	bool isNew;

	/// If true, the user is allowed to lead a Fireteam into this activity.
	@JsonKey(name:'canLead')
	bool canLead;

	/// If true, the user is allowed to join with another Fireteam in this activity.
	@JsonKey(name:'canJoin')
	bool canJoin;

	/// If true, we both have the ability to know that the user has completed this activity and they have completed it. Unfortunately, we can&#39;t necessarily know this for all activities. As such, this should probably only be used if you already know in advance which specific activities you wish to check.
	@JsonKey(name:'isCompleted')
	bool isCompleted;

	/// If true, the user should be able to see this activity.
	@JsonKey(name:'isVisible')
	bool isVisible;

	/// The difficulty level of the activity, if applicable.
	@JsonKey(name:'displayLevel')
	int displayLevel;

	/// The recommended light level for the activity, if applicable.
	@JsonKey(name:'recommendedLight')
	int recommendedLight;

	/// A DestinyActivityDifficultyTier enum value indicating the difficulty of the activity.
	@JsonKey(name:'difficultyTier')
	int difficultyTier;
	DestinyActivity();

	factory DestinyActivity.fromJson(Map<String, dynamic> json) => _$DestinyActivityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityToJson(this);
}
