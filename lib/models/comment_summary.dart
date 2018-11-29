class CommentSummary{
	int topicId;
	int commentCount;
	CommentSummary(
		int this.topicId,
		int this.commentCount,
	);

	static CommentSummary fromJson(Map<String, dynamic> data){
		return new CommentSummary(
				data['topicId'],
				data['commentCount'],
		);
	}

	static List<CommentSummary> fromList(List<dynamic> data){
		List<CommentSummary> list = new List();
    data.forEach((item) {
      list.add(CommentSummary.fromJson(item));
    });
    return list;
	}
}