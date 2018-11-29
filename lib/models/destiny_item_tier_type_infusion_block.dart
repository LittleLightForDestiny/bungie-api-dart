class DestinyItemTierTypeInfusionBlock{
	int baseQualityTransferRatio;
	int minimumQualityIncrement;
	DestinyItemTierTypeInfusionBlock(
		int this.baseQualityTransferRatio,
		int this.minimumQualityIncrement,
	);

	static DestinyItemTierTypeInfusionBlock fromJson(Map<String, dynamic> data){
		return new DestinyItemTierTypeInfusionBlock(
				data['baseQualityTransferRatio'],
				data['minimumQualityIncrement'],
		);
	}

	static List<DestinyItemTierTypeInfusionBlock> fromList(List<dynamic> data){
		List<DestinyItemTierTypeInfusionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTierTypeInfusionBlock.fromJson(item));
    });
    return list;
	}
}