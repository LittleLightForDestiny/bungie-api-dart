import 'ignore_response.dart';
class PostResponse{
	String lastReplyTimestamp;
	bool IsPinned;
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
		bool this.IsPinned,
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

	static PostResponse fromJson(Map<String, dynamic> data){
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
				IgnoreResponse.fromJson(data['ignoreStatus']),
				data['locale'],
		);
	}

	static List<PostResponse> fromList(List<dynamic> data){
		List<PostResponse> list = new List();
    data.forEach((item) {
      list.add(PostResponse.fromJson(item));
    });
    return list;
	}
}