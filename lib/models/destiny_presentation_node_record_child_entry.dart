class DestinyPresentationNodeRecordChildEntry{
	int recordHash;
	DestinyPresentationNodeRecordChildEntry(
		int this.recordHash,
	);

	static DestinyPresentationNodeRecordChildEntry fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeRecordChildEntry(
				data['recordHash'],
		);
	}

	static List<DestinyPresentationNodeRecordChildEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeRecordChildEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeRecordChildEntry.fromJson(item));
    });
    return list;
	}
}