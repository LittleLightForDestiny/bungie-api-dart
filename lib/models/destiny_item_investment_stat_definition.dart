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
		return new DestinyItemInvestmentStatDefinition(
				data['statTypeHash'],
				data['value'],
				data['isConditionallyActive'],
		);
	}

	static List<DestinyItemInvestmentStatDefinition> fromList(List<dynamic> data){
		List<DestinyItemInvestmentStatDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemInvestmentStatDefinition.fromJson(item));
    });
    return list;
	}
}