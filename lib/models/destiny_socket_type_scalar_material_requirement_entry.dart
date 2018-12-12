class DestinySocketTypeScalarMaterialRequirementEntry{
	int currencyItemHash;
	int scalarValue;
	DestinySocketTypeScalarMaterialRequirementEntry(
		int this.currencyItemHash,
		int this.scalarValue,
	);

	static DestinySocketTypeScalarMaterialRequirementEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySocketTypeScalarMaterialRequirementEntry(
				data['currencyItemHash'],
				data['scalarValue'],
		);
	}

	static List<DestinySocketTypeScalarMaterialRequirementEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinySocketTypeScalarMaterialRequirementEntry> list = new List();
    data.forEach((item) {
      list.add(DestinySocketTypeScalarMaterialRequirementEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['currencyItemHash'] = this.currencyItemHash;
			data['scalarValue'] = this.scalarValue;
		return data;
	}
}