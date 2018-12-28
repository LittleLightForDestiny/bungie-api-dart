
/**  */
class DestinyItemTierTypeInfusionBlock{
	
	/** The default portion of quality that will transfer from the infuser to the infusee item. (InfuserQuality - InfuseeQuality) * baseQualityTransferRatio = base quality transferred. */
	double baseQualityTransferRatio;
	
	/** As long as InfuserQuality > InfuseeQuality, the amount of quality bestowed is guaranteed to be at least this value, even if the transferRatio would dictate that it should be less. The total amount of quality that ends up in the Infusee cannot exceed the Infuser's quality however (for instance, if you infuse a 300 item with a 301 item and the minimum quality increment is 10, the infused item will not end up with 310 quality) */
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