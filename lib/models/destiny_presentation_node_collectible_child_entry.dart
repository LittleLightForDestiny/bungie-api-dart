class DestinyPresentationNodeCollectibleChildEntry{
	int collectibleHash;
	DestinyPresentationNodeCollectibleChildEntry(
		int this.collectibleHash,
	);

	static DestinyPresentationNodeCollectibleChildEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeCollectibleChildEntry(
				data['collectibleHash'],
		);
	}

	static List<DestinyPresentationNodeCollectibleChildEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeCollectibleChildEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeCollectibleChildEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collectibleHash'] = collectibleHash;
	}
}