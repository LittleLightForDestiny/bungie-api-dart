class DestinyItemTierTypeInfusionBlock{
	double baseQualityTransferRatio;
	int minimumQualityIncrement;
	DestinyItemTierTypeInfusionBlock(
		this.baseQualityTransferRatio,
		this.minimumQualityIncrement,
	);

	static DestinyItemTierTypeInfusionBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTierTypeInfusionBlock(
				data['baseQualityTransferRatio'],
				data['minimumQualityIncrement'],
		);
	}

	static List<DestinyItemTierTypeInfusionBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTierTypeInfusionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTierTypeInfusionBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['baseQualityTransferRatio'] = this.baseQualityTransferRatio;
			data['minimumQualityIncrement'] = this.minimumQualityIncrement;
		return data;
	}
}