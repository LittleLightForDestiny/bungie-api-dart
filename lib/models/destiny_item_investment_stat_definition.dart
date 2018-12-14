class DestinyItemInvestmentStatDefinition{
	int statTypeHash;
	int value;
	bool isConditionallyActive;
	DestinyItemInvestmentStatDefinition(
		this.statTypeHash,
		this.value,
		this.isConditionallyActive,
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
			data['statTypeHash'] = this.statTypeHash;
			data['value'] = this.value;
			data['isConditionallyActive'] = this.isConditionallyActive;
		return data;
	}
}