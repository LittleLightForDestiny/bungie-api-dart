
/** The list entry view for trending items. Returns just enough to show the item on the trending page. */
class TrendingEntry{
	
	/** The weighted score of this trending item. */
	int weight;
	
	/**  */
	bool isFeatured;
	
	/** We don't know whether the identifier will be a string, a uint, or a long... so we're going to cast it all to a string. But either way, we need any trending item created to have a single unique identifier for its type. */
	String identifier;
	
	/** An enum - unfortunately - dictating all of the possible kinds of trending items that you might get in your result set, in case you want to do custom rendering or call to get the details of the item. */
	int entityType;
	
	/** The localized "display name/article title/'primary localized identifier'" of the entity. */
	String displayName;
	
	/** If the entity has a localized tagline/subtitle/motto/whatever, that is found here. */
	String tagline;
	
	/**  */
	String image;
	
	/**  */
	String startDate;
	
	/**  */
	String endDate;
	
	/**  */
	String link;
	
	/** If this is populated, the entry has a related WebM video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo */
	String webmVideo;
	
	/** If this is populated, the entry has a related MP4 video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo */
	String mp4Video;
	
	/** If isFeatured, this image will be populated with whatever the featured image is. Note that this will likely be a very large image, so don't use it all the time. */
	String featureImage;
	
	/** If the item is of entityType TrendingEntryType.Container, it may have items - also Trending Entries - contained within it. This is the ordered list of those to display under the Container's header. */
	List<TrendingEntry> items;
	
	/** If the entry has a date at which it was created, this is that date. */
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