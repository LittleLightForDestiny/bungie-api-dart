class DestinyItemInvestmentStatDefinition{
	int statTypeHash;
	int value;
	bool isConditionallyActive;
	DestinyItemInvestmentStatDefinition(
		int this.statTypeHash,
		int this.value,
		bool this.isConditionallyActive,
	);

	static DestinyItemInvestmentStatDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemInvestmentStatDefinition.fromJson(item));
    });
    return list;
	}
}