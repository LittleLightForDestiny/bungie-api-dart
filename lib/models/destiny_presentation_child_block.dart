class DestinyPresentationChildBlock{
	int presentationNodeType;
	List<int> parentPresentationNodeHashes;
	int displayStyle;
	DestinyPresentationChildBlock(
		int this.presentationNodeType,
		List<int> this.parentPresentationNodeHashes,
		int this.displayStyle,
	);

	static DestinyPresentationChildBlock fromJson(Map<String, dynamic> data){
		return new DestinyPresentationChildBlock(
				data['presentationNodeType'],
				data['parentPresentationNodeHashes'],
				data['displayStyle'],
		);
	}

	static List<DestinyPresentationChildBlock> fromList(List<dynamic> data){
		List<DestinyPresentationChildBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationChildBlock.fromJson(item));
    });
    return list;
	}
}