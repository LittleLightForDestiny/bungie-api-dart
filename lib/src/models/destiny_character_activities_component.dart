import 'package:json_annotation/json_annotation.dart';

import 'destiny_activity.dart';
import '../enums/destiny_activity_mode_type.dart';

part 'destiny_character_activities_component.g.dart';

/// This component holds activity data for a character. It will tell you about the character&#39;s current activity status, as well as activities that are available to the user.
@JsonSerializable()
class DestinyCharacterActivitiesComponent{
	
	DestinyCharacterActivitiesComponent();

	factory DestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyCharacterActivitiesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The last date that the user started playing an activity.
	@JsonKey(name:'dateActivityStarted')
	String dateActivityStarted;
	/// The list of activities that the user can play.
	@JsonKey(name:'availableActivities')
	List<DestinyActivity> availableActivities;
	/// If the user is in an activity, this will be the hash of the Activity being played. Note that you must combine this info with currentActivityModeHash to get a real picture of what the user is doing right now. For instance, PVP "Activities" are just maps: it's the ActivityMode that determines what type of PVP game they're playing.
	@JsonKey(name:'currentActivityHash')
	int currentActivityHash;
	/// If the user is in an activity, this will be the hash of the activity mode being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now.
	@JsonKey(name:'currentActivityModeHash')
	int currentActivityModeHash;
	/// And the current activity's most specific mode type, if it can be found.
	@JsonKey(name:'currentActivityModeType')
	int currentActivityModeType;
	/// If the user is in an activity, this will be the hashes of the DestinyActivityModeDefinition being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now.
	@JsonKey(name:'currentActivityModeHashes')
	List<int> currentActivityModeHashes;
	/// All Activity Modes that apply to the current activity being played, in enum form.
	@JsonKey(name:'currentActivityModeTypes')
	List<DestinyActivityModeType> currentActivityModeTypes;
	/// If the user is in a playlist, this is the hash identifier for the playlist that they chose.
	@JsonKey(name:'currentPlaylistActivityHash')
	int currentPlaylistActivityHash;
	/// This will have the activity hash of the last completed story/campaign mission, in case you care about that.
	@JsonKey(name:'lastCompletedStoryHash')
	int lastCompletedStoryHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActivitiesComponentToJson(this);
}