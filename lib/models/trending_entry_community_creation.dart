class TrendingEntryCommunityCreation{
	String media;
	String title;
	String author;
	String authorMembershipId;
	String postId;
	String body;
	int upvotes;
	TrendingEntryCommunityCreation(
		this.media,
		this.title,
		this.author,
		this.authorMembershipId,
		this.postId,
		this.body,
		this.upvotes,
	);

	static TrendingEntryCommunityCreation fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryCommunityCreation(
				data['media'],
				data['title'],
				data['author'],
				data['authorMembershipId'],
				data['postId'],
				data['body'],
				data['upvotes'],
		);
	}

	static List<TrendingEntryCommunityCreation> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryCommunityCreation> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryCommunityCreation.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['media'] = this.media;
			data['title'] = this.title;
			data['author'] = this.author;
			data['authorMembershipId'] = this.authorMembershipId;
			data['postId'] = this.postId;
			data['body'] = this.body;
			data['upvotes'] = this.upvotes;
		return data;
	}
}