import 'destiny_activity.dart';
class DestinyCharacterActivitiesComponent{
	String dateActivityStarted;
	List<DestinyActivity> availableActivities;
	int currentActivityHash;
	int currentActivityModeHash;
	int currentActivityModeType;
	List<int> currentActivityModeHashes;
	List<int> currentActivityModeTypes;
	int currentPlaylistActivityHash;
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