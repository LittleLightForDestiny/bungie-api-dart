class TrendingEntry{
	int weight;
	bool isFeatured;
	String identifier;
	int entityType;
	String displayName;
	String tagline;
	String image;
	String startDate;
	String endDate;
	String link;
	String webmVideo;
	String mp4Video;
	String featureImage;
	List<TrendingEntry> items;
	String creationDate;
	TrendingEntry(
		int this.weight,
		bool this.isFeatured,
		String this.identifier,
		int this.entityType,
		String this.displayName,
		String this.tagline,
		String this.image,
		String this.startDate,
		String this.endDate,
		String this.link,
		String this.webmVideo,
		String this.mp4Video,
		String this.featureImage,
		List<TrendingEntry> this.items,
		String this.creationDate,
	);

	static TrendingEntry fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntry(
				data['weight'],
				data['isFeatured'],
				data['identifier'],
				data['entityType'],
				data['displayName'],
				data['tagline'],
				data['image'],
				data['startDate'],
				data['endDate'],
				data['link'],
				data['webmVideo'],
				data['mp4Video'],
				data['featureImage'],
				TrendingEntry.fromList(data['items']),
				data['creationDate'],
		);
	}

	static List<TrendingEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntry> list = new List();
    data.forEach((item) {
      list.add(TrendingEntry.fromJson(item));
    });
    return list;
	}
}