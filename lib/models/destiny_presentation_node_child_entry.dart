
/*  */
class DestinyPresentationNodeChildEntry{
	
	/*  */
	int presentationNodeHash;
	DestinyPresentationNodeChildEntry(
		this.presentationNodeHash,
	);

	static DestinyPresentationNodeChildEntry fromMap(Map<String, dynamic> data){
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
      list.add(DestinyPresentationNodeChildEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['presentationNodeHash'] = this.presentationNodeHash;
		return data;
	}
}