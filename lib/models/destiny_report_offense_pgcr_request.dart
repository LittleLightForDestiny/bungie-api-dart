class DestinyReportOffensePgcrRequest{
	List<int> reasonCategoryHashes;
	List<int> reasonHashes;
	String offendingCharacterId;
	DestinyReportOffensePgcrRequest(
		this.reasonCategoryHashes,
		this.reasonHashes,
		this.offendingCharacterId,
	);

	static DestinyReportOffensePgcrRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportOffensePgcrRequest(
				data['reasonCategoryHashes'] != null ? data['reasonCategoryHashes']?.cast<int>() ?? null : null,
				data['reasonHashes'] != null ? data['reasonHashes']?.cast<int>() ?? null : null,
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
			data['reasonCategoryHashes'] = this.reasonCategoryHashes;
			data['reasonHashes'] = this.reasonHashes;
			data['offendingCharacterId'] = this.offendingCharacterId;
		return data;
	}
}