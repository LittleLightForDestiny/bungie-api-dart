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
		String this.dateActivityStarted,
		List<DestinyActivity> this.availableActivities,
		int this.currentActivityHash,
		int this.currentActivityModeHash,
		int this.currentActivityModeType,
		List<int> this.currentActivityModeHashes,
		List<int> this.currentActivityModeTypes,
		int this.currentPlaylistActivityHash,
		int this.lastCompletedStoryHash,
	);

	static DestinyCharacterActivitiesComponent fromJson(Map<String, dynamic> data){
		return new DestinyCharacterActivitiesComponent(
				data['dateActivityStarted'],
				DestinyActivity.fromList(data['availableActivities']),
				data['currentActivityHash'],
				data['currentActivityModeHash'],
				data['currentActivityModeType'],
				data['currentActivityModeHashes'],
				data['currentActivityModeTypes'],
				data['currentPlaylistActivityHash'],
				data['lastCompletedStoryHash'],
		);
	}

	static List<DestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		List<DestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterActivitiesComponent.fromJson(item));
    });
    return list;
	}
}