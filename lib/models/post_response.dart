import 'ignore_response.dart';
class PostResponse{
	String lastReplyTimestamp;
	bool isPinned;
	int urlMediaType;
	String thumbnail;
	int popularity;
	bool isActive;
	bool isAnnouncement;
	int userRating;
	bool userHasRated;
	bool userHasMutedPost;
	int latestReplyPostId;
	int latestReplyAuthorId;
	IgnoreResponse ignoreStatus;
	String locale;
	PostResponse(
		String this.lastReplyTimestamp,
		bool this.isPinned,
		int this.urlMediaType,
		String this.thumbnail,
		int this.popularity,
		bool this.isActive,
		bool this.isAnnouncement,
		int this.userRating,
		bool this.userHasRated,
		bool this.userHasMutedPost,
		int this.latestReplyPostId,
		int this.latestReplyAuthorId,
		IgnoreResponse this.ignoreStatus,
		String this.locale,
	);

	static PostResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PostResponse(
				data['lastReplyTimestamp'],
				data['IsPinned'],
				data['urlMediaType'],
				data['thumbnail'],
				data['popularity'],
				data['isActive'],
				data['isAnnouncement'],
				data['userRating'],
				data['userHasRated'],
				data['userHasMutedPost'],
				data['latestReplyPostId'],
				data['latestReplyAuthorId'],
				IgnoreResponse.fromMap(data['ignoreStatus']),
				data['locale'],
		);
	}

	static List<PostResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PostResponse> list = new List();
    data.forEach((item) {
      list.add(PostResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['lastReplyTimestamp'] = this.lastReplyTimestamp;
			data['IsPinned'] = this.isPinned;
			data['urlMediaType'] = this.urlMediaType;
			data['thumbnail'] = this.thumbnail;
			data['popularity'] = this.popularity;
			data['isActive'] = this.isActive;
			data['isAnnouncement'] = this.isAnnouncement;
			data['userRating'] = this.userRating;
			data['userHasRated'] = this.userHasRated;
			data['userHasMutedPost'] = this.userHasMutedPost;
			data['latestReplyPostId'] = this.latestReplyPostId;
			data['latestReplyAuthorId'] = this.latestReplyAuthorId;
			data['ignoreStatus'] = this.ignoreStatus.toMap();
			data['locale'] = this.locale;
		return data;
	}
}