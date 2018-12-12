class TrendingEntryCommunityStream{
	String image;
	String title;
	String partnershipIdentifier;
	int partnershipType;
	TrendingEntryCommunityStream(
		String this.image,
		String this.title,
		String this.partnershipIdentifier,
		int this.partnershipType,
	);

	static TrendingEntryCommunityStream fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryCommunityStream(
				data['image'],
				data['title'],
				data['partnershipIdentifier'],
				data['partnershipType'],
		);
	}

	static List<TrendingEntryCommunityStream> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryCommunityStream> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryCommunityStream.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['image'] = this.image;
			data['title'] = this.title;
			data['partnershipIdentifier'] = this.partnershipIdentifier;
			data['partnershipType'] = this.partnershipType;
		return data;
	}
}