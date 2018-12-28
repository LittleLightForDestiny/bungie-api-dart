import 'ignore_response.dart';

/*  */
class PostResponse{
	
	/*  */
	String lastReplyTimestamp;
	
	/*  */
	bool isPinned;
	
	/*  */
	int urlMediaType;
	
	/*  */
	String thumbnail;
	
	/*  */
	int popularity;
	
	/*  */
	bool isActive;
	
	/*  */
	bool isAnnouncement;
	
	/*  */
	int userRating;
	
	/*  */
	bool userHasRated;
	
	/*  */
	bool userHasMutedPost;
	
	/*  */
	String latestReplyPostId;
	
	/*  */
	String latestReplyAuthorId;
	
	/*  */
	IgnoreResponse ignoreStatus;
	
	/*  */
	String locale;
	PostResponse(
		this.lastReplyTimestamp,
		this.isPinned,
		this.urlMediaType,
		this.thumbnail,
		this.popularity,
		this.isActive,
		this.isAnnouncement,
		this.userRating,
		this.userHasRated,
		this.userHasMutedPost,
		this.latestReplyPostId,
		this.latestReplyAuthorId,
		this.ignoreStatus,
		this.locale,
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
				data['ignoreStatus'] != null ? IgnoreResponse.fromMap(data['ignoreStatus']) : null,
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