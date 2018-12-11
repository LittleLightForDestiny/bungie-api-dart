class TrendingEntryCommunityCreation{
	String media;
	String title;
	String author;
	int authorMembershipId;
	int postId;
	String body;
	int upvotes;
	TrendingEntryCommunityCreation(
		String this.media,
		String this.title,
		String this.author,
		int this.authorMembershipId,
		int this.postId,
		String this.body,
		int this.upvotes,
	);

	static TrendingEntryCommunityCreation fromJson(Map<String, dynamic> data){
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
      list.add(TrendingEntryCommunityCreation.fromJson(item));
    });
    return list;
	}
}