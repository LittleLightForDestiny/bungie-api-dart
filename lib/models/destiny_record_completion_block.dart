
/**  */
class DestinyRecordCompletionBlock{
	
	/** The number of objectives that must be completed before the objective is considered "complete" */
	int partialCompletionObjectiveCountThreshold;
	
	/**  */
	int scoreValue;
	
	/**  */
	bool shouldFireToast;
	
	/**  */
	int toastStyle;
	DestinyRecordCompletionBlock(
		this.partialCompletionObjectiveCountThreshold,
		this.scoreValue,
		this.shouldFireToast,
		this.toastStyle,
	);

	static DestinyRecordCompletionBlock fromMap(Map<String, dynamic> data){
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
      list.add(DestinyRecordCompletionBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['partialCompletionObjectiveCountThreshold'] = this.partialCompletionObjectiveCountThreshold;
			data['ScoreValue'] = this.scoreValue;
			data['shouldFireToast'] = this.shouldFireToast;
			data['toastStyle'] = this.toastStyle;
		return data;
	}
}