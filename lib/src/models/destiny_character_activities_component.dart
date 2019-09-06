import 'destiny_activity.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_activities_component.g.dart';

/// This component holds activity data for a character. It will tell you about the character&#39;s current activity status, as well as activities that are available to the user.
@JsonSerializable()
class DestinyCharacterActivitiesComponent {

	/// The last date that the user started playing an activity.
	@JsonKey(name:'dateActivityStarted')
	String dateActivityStarted;

	/// The list of activities that the user can play.
	@JsonKey(name:'availableActivities')
	List<DestinyActivity> availableActivities;

	/// If the user is in an activity, this will be the hash of the Activity being played. Note that you must combine this info with currentActivityModeHash to get a real picture of what the user is doing right now. For instance, PVP &quot;Activities&quot; are just maps: it&#39;s the ActivityMode that determines what type of PVP game they&#39;re playing.
	@JsonKey(name:'currentActivityHash')
	int currentActivityHash;

	/// If the user is in an activity, this will be the hash of the activity mode being played. Combine with currentActivityHash to give a person a full picture of what they&#39;re doing right now.
	@JsonKey(name:'currentActivityModeHash')
	int currentActivityModeHash;

	/// And the current activity&#39;s most specific mode type, if it can be found.
	@JsonKey(name:'currentActivityModeType')
	int currentActivityModeType;

	/// If the user is in an activity, this will be the hashes of the DestinyActivityModeDefinition being played. Combine with currentActivityHash to give a person a full picture of what they&#39;re doing right now.
	@JsonKey(name:'currentActivityModeHashes')
	List<int> currentActivityModeHashes;

	/// All Activity Modes that apply to the current activity being played, in enum form.
	@JsonKey(name:'currentActivityModeTypes')
	List<int> currentActivityModeTypes;

	/// If the user is in a playlist, this is the hash identifier for the playlist that they chose.
	@JsonKey(name:'currentPlaylistActivityHash')
	int currentPlaylistActivityHash;

	/// This will have the activity hash of the last completed story&#x2F;campaign mission, in case you care about that.
	@JsonKey(name:'lastCompletedStoryHash')
	int lastCompletedStoryHash;
	DestinyCharacterActivitiesComponent();

	factory DestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) => _$DestinyCharacterActivitiesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActivitiesComponentToJson(this);
}
