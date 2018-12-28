import 'destiny_activity.dart';

/** This component holds activity data for a character. It will tell you about the character's current activity status, as well as activities that are available to the user. */
class DestinyCharacterActivitiesComponent{
	
	/** The last date that the user started playing an activity. */
	String dateActivityStarted;
	
	/** The list of activities that the user can play. */
	List<DestinyActivity> availableActivities;
	
	/** If the user is in an activity, this will be the hash of the Activity being played. Note that you must combine this info with currentActivityModeHash to get a real picture of what the user is doing right now. For instance, PVP "Activities" are just maps: it's the ActivityMode that determines what type of PVP game they're playing. */
	int currentActivityHash;
	
	/** If the user is in an activity, this will be the hash of the activity mode being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now. */
	int currentActivityModeHash;
	
	/** And the current activity's most specific mode type, if it can be found. */
	int currentActivityModeType;
	
	/** If the user is in an activity, this will be the hashes of the DestinyActivityModeDefinition being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now. */
	List<int> currentActivityModeHashes;
	
	/** All Activity Modes that apply to the current activity being played, in enum form. */
	List<int> currentActivityModeTypes;
	
	/** If the user is in a playlist, this is the hash identifier for the playlist that they chose. */
	int currentPlaylistActivityHash;
	
	/** This will have the activity hash of the last completed story/campaign mission, in case you care about that. */
	int lastCompletedStoryHash;
	DestinyCharacterActivitiesComponent(
		this.dateActivityStarted,
		this.availableActivities,
		this.currentActivityHash,
		this.currentActivityModeHash,
		this.currentActivityModeType,
		this.currentActivityModeHashes,
		this.currentActivityModeTypes,
		this.currentPlaylistActivityHash,
		this.lastCompletedStoryHash,
	);

	static DestinyCharacterActivitiesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterActivitiesComponent(
				data['dateActivityStarted'],
				data['availableActivities'] != null ? DestinyActivity.fromList(data['availableActivities']) : null,
				data['currentActivityHash'],
				data['currentActivityModeHash'],
				data['currentActivityModeType'],
				data['currentActivityModeHashes'] != null ? data['currentActivityModeHashes']?.cast<int>() ?? null : null,
				data['currentActivityModeTypes'] != null ? data['currentActivityModeTypes']?.cast<int>() ?? null : null,
				data['currentPlaylistActivityHash'],
				data['lastCompletedStoryHash'],
		);
	}

	static List<DestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterActivitiesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['dateActivityStarted'] = this.dateActivityStarted;
			data['availableActivities'] = this.availableActivities.map((item)=>item.toMap()).toList();
			data['currentActivityHash'] = this.currentActivityHash;
			data['currentActivityModeHash'] = this.currentActivityModeHash;
			data['currentActivityModeType'] = this.currentActivityModeType;
			data['currentActivityModeHashes'] = this.currentActivityModeHashes;
			data['currentActivityModeTypes'] = this.currentActivityModeTypes;
			data['currentPlaylistActivityHash'] = this.currentPlaylistActivityHash;
			data['lastCompletedStoryHash'] = this.lastCompletedStoryHash;
		return data;
	}
}