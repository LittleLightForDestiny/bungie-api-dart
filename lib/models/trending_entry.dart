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
		this.weight,
		this.isFeatured,
		this.identifier,
		this.entityType,
		this.displayName,
		this.tagline,
		this.image,
		this.startDate,
		this.endDate,
		this.link,
		this.webmVideo,
		this.mp4Video,
		this.featureImage,
		this.items,
		this.creationDate,
	);

	static TrendingEntry fromMap(Map<String, dynamic> data){
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
				data['items'] != null ? TrendingEntry.fromList(data['items']) : null,
				data['creationDate'],
		);
	}

	static List<TrendingEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntry> list = new List();
    data.forEach((item) {
      list.add(TrendingEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['weight'] = this.weight;
			data['isFeatured'] = this.isFeatured;
			data['identifier'] = this.identifier;
			data['entityType'] = this.entityType;
			data['displayName'] = this.displayName;
			data['tagline'] = this.tagline;
			data['image'] = this.image;
			data['startDate'] = this.startDate;
			data['endDate'] = this.endDate;
			data['link'] = this.link;
			data['webmVideo'] = this.webmVideo;
			data['mp4Video'] = this.mp4Video;
			data['featureImage'] = this.featureImage;
			data['items'] = this.items.map((item)=>item.toMap()).toList();
			data['creationDate'] = this.creationDate;
		return data;
	}
}