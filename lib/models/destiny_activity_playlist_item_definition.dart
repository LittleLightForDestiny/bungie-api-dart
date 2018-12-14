class DestinyActivityPlaylistItemDefinition{
	int activityHash;
	int directActivityModeHash;
	int directActivityModeType;
	List<int> activityModeHashes;
	List<int> activityModeTypes;
	DestinyActivityPlaylistItemDefinition(
		this.activityHash,
		this.directActivityModeHash,
		this.directActivityModeType,
		this.activityModeHashes,
		this.activityModeTypes,
	);

	static DestinyActivityPlaylistItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityPlaylistItemDefinition(
				data['activityHash'],
				data['directActivityModeHash'],
				data['directActivityModeType'],
				data['activityModeHashes'] != null ? data['activityModeHashes']?.cast<int>() ?? null : null,
				data['activityModeTypes'],
		);
	}

	static List<DestinyActivityPlaylistItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityPlaylistItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityPlaylistItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['directActivityModeHash'] = this.directActivityModeHash;
			data['directActivityModeType'] = this.directActivityModeType;
			data['activityModeHashes'] = this.activityModeHashes;
			data['activityModeTypes'] = this.activityModeTypes;
		return data;
	}
}