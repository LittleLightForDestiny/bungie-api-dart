class DestinyObjectiveProgress{
	int objectiveHash;
	int destinationHash;
	int activityHash;
	int progress;
	int completionValue;
	bool complete;
	bool visible;
	DestinyObjectiveProgress(
		int this.objectiveHash,
		int this.destinationHash,
		int this.activityHash,
		int this.progress,
		int this.completionValue,
		bool this.complete,
		bool this.visible,
	);

	static DestinyObjectiveProgress fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveProgress(
				data['objectiveHash'],
				data['destinationHash'],
				data['activityHash'],
				data['progress'],
				data['completionValue'],
				data['complete'],
				data['visible'],
		);
	}

	static List<DestinyObjectiveProgress> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveProgress> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveProgress.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHash'] = this.objectiveHash;
			data['destinationHash'] = this.destinationHash;
			data['activityHash'] = this.activityHash;
			data['progress'] = this.progress;
			data['completionValue'] = this.completionValue;
			data['complete'] = this.complete;
			data['visible'] = this.visible;
		return data;
	}
}