class DestinyPresentationChildBlock{
	int presentationNodeType;
	List<int> parentPresentationNodeHashes;
	int displayStyle;
	DestinyPresentationChildBlock(
		int this.presentationNodeType,
		List<int> this.parentPresentationNodeHashes,
		int this.displayStyle,
	);

	static DestinyPresentationChildBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationChildBlock(
				data['presentationNodeType'],
				data['parentPresentationNodeHashes'],
				data['displayStyle'],
		);
	}

	static List<DestinyPresentationChildBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationChildBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationChildBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['presentationNodeType'] = this.presentationNodeType;
			data['parentPresentationNodeHashes'] = this.parentPresentationNodeHashes;
			data['displayStyle'] = this.displayStyle;
		return data;
	}
}