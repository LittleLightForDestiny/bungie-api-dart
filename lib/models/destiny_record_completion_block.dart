class DestinyRecordCompletionBlock{
	int partialCompletionObjectiveCountThreshold;
	int scoreValue;
	bool shouldFireToast;
	int toastStyle;
	DestinyRecordCompletionBlock(
		int this.partialCompletionObjectiveCountThreshold,
		int this.scoreValue,
		bool this.shouldFireToast,
		int this.toastStyle,
	);

	static DestinyRecordCompletionBlock fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordCompletionBlock(
				data['partialCompletionObjectiveCountThreshold'],
				data['ScoreValue'],
				data['shouldFireToast'],
				data['toastStyle'],
		);
	}

	static List<DestinyRecordCompletionBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordCompletionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordCompletionBlock.fromJson(item));
    });
    return list;
	}
}