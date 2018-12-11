class DestinySocketTypeScalarMaterialRequirementEntry{
	int currencyItemHash;
	int scalarValue;
	DestinySocketTypeScalarMaterialRequirementEntry(
		int this.currencyItemHash,
		int this.scalarValue,
	);

	static DestinySocketTypeScalarMaterialRequirementEntry fromJson(Map<String, dynamic> data){
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
      list.add(DestinySocketTypeScalarMaterialRequirementEntry.fromJson(item));
    });
    return list;
	}
}