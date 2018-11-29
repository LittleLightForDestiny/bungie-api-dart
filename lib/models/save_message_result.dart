class SaveMessageResult{
	int conversationId;
	int messageId;
	SaveMessageResult(
		int this.conversationId,
		int this.messageId,
	);

	static SaveMessageResult fromJson(Map<String, dynamic> data){
		return new SaveMessageResult(
				data['conversationId'],
				data['messageId'],
		);
	}

	static List<SaveMessageResult> fromList(List<dynamic> data){
		List<SaveMessageResult> list = new List();
    data.forEach((item) {
      list.add(SaveMessageResult.fromJson(item));
    });
    return list;
	}
}