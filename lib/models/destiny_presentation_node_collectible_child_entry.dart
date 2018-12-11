class DestinyPresentationNodeCollectibleChildEntry{
	int collectibleHash;
	DestinyPresentationNodeCollectibleChildEntry(
		int this.collectibleHash,
	);

	static DestinyPresentationNodeCollectibleChildEntry fromJson(Map<String, dynamic> data){
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
      list.add(DestinyPresentationNodeCollectibleChildEntry.fromJson(item));
    });
    return list;
	}
}