class DestinyReportOffensePgcrRequest{
	List<int> reasonCategoryHashes;
	List<int> reasonHashes;
	int offendingCharacterId;
	DestinyReportOffensePgcrRequest(
		List<int> this.reasonCategoryHashes,
		List<int> this.reasonHashes,
		int this.offendingCharacterId,
	);

	static DestinyReportOffensePgcrRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportOffensePgcrRequest(
				data['reasonCategoryHashes'],
				data['reasonHashes'],
				data['offendingCharacterId'],
		);
	}

	static List<DestinyReportOffensePgcrRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyReportOffensePgcrRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyReportOffensePgcrRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['reasonCategoryHashes'] = reasonCategoryHashes;
			data['reasonHashes'] = reasonHashes;
			data['offendingCharacterId'] = offendingCharacterId;
	}
}