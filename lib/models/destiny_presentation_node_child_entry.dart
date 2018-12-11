class DestinyPresentationNodeChildEntry{
	int presentationNodeHash;
	DestinyPresentationNodeChildEntry(
		int this.presentationNodeHash,
	);

	static DestinyPresentationNodeChildEntry fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeChildEntry(
				data['presentationNodeHash'],
		);
	}

	static List<DestinyPresentationNodeChildEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeChildEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeChildEntry.fromJson(item));
    });
    return list;
	}
}