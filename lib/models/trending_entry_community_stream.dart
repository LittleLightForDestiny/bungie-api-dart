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

	static TrendingEntryCommunityStream fromJson(Map<String, dynamic> data){
		return new TrendingEntryCommunityStream(
				data['image'],
				data['title'],
				data['partnershipIdentifier'],
				data['partnershipType'],
		);
	}

	static List<TrendingEntryCommunityStream> fromList(List<dynamic> data){
		List<TrendingEntryCommunityStream> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryCommunityStream.fromJson(item));
    });
    return list;
	}
}