
/** If the activity is a playlist, this is the definition for a specific entry in the playlist: a single possible combination of Activity and Activity Mode that can be chosen. */
class DestinyActivityPlaylistItemDefinition{
	
	/** The hash identifier of the Activity that can be played. Use it to look up the DestinyActivityDefinition. */
	int activityHash;
	
	/** If this playlist entry had an activity mode directly defined on it, this will be the hash of that mode. */
	int directActivityModeHash;
	
	/** If the playlist entry had an activity mode directly defined on it, this will be the enum value of that mode. */
	int directActivityModeType;
	
	/** The hash identifiers for Activity Modes relevant to this entry. */
	List<int> activityModeHashes;
	
	/** The activity modes - if any - in enum form. Because we can't seem to escape the enums. */
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
				data['activityModeTypes'] != null ? data['activityModeTypes']?.cast<int>() ?? null : null,
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