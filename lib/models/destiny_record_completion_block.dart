class DestinyRecordCompletionBlock{
	int partialCompletionObjectiveCountThreshold;
	int ScoreValue;
	bool shouldFireToast;
	int toastStyle;
	DestinyRecordCompletionBlock(
		int this.partialCompletionObjectiveCountThreshold,
		int this.ScoreValue,
		bool this.shouldFireToast,
		int this.toastStyle,
	);

	static DestinyRecordCompletionBlock fromJson(Map<String, dynamic> data){
		return new DestinyRecordCompletionBlock(
				data['partialCompletionObjectiveCountThreshold'],
				data['ScoreValue'],
				data['shouldFireToast'],
				data['toastStyle'],
		);
	}

	static List<DestinyRecordCompletionBlock> fromList(List<dynamic> data){
		List<DestinyRecordCompletionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordCompletionBlock.fromJson(item));
    });
    return list;
	}
}