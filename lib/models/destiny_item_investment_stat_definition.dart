class DestinyItemInvestmentStatDefinition{
	int statTypeHash;
	int value;
	bool isConditionallyActive;
	DestinyItemInvestmentStatDefinition(
		int this.statTypeHash,
		int this.value,
		bool this.isConditionallyActive,
	);

	static DestinyItemInvestmentStatDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemInvestmentStatDefinition(
				data['statTypeHash'],
				data['value'],
				data['isConditionallyActive'],
		);
	}

	static List<DestinyItemInvestmentStatDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemInvestmentStatDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemInvestmentStatDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statTypeHash'] = statTypeHash;
			data['value'] = value;
			data['isConditionallyActive'] = isConditionallyActive;
	}
}