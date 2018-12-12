class Destiny2CoreSettings{
	int collectionRootNode;
	int badgesRootNode;
	int recordsRootNode;
	int medalsRootNode;
	String undiscoveredCollectibleImage;
	String ammoTypeHeavyIcon;
	String ammoTypeSpecialIcon;
	String ammoTypePrimaryIcon;
	Destiny2CoreSettings(
		int this.collectionRootNode,
		int this.badgesRootNode,
		int this.recordsRootNode,
		int this.medalsRootNode,
		String this.undiscoveredCollectibleImage,
		String this.ammoTypeHeavyIcon,
		String this.ammoTypeSpecialIcon,
		String this.ammoTypePrimaryIcon,
	);

	static Destiny2CoreSettings fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new Destiny2CoreSettings(
				data['collectionRootNode'],
				data['badgesRootNode'],
				data['recordsRootNode'],
				data['medalsRootNode'],
				data['undiscoveredCollectibleImage'],
				data['ammoTypeHeavyIcon'],
				data['ammoTypeSpecialIcon'],
				data['ammoTypePrimaryIcon'],
		);
	}

	static List<Destiny2CoreSettings> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<Destiny2CoreSettings> list = new List();
    data.forEach((item) {
      list.add(Destiny2CoreSettings.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['collectionRootNode'] = collectionRootNode;
			data['badgesRootNode'] = badgesRootNode;
			data['recordsRootNode'] = recordsRootNode;
			data['medalsRootNode'] = medalsRootNode;
			data['undiscoveredCollectibleImage'] = undiscoveredCollectibleImage;
			data['ammoTypeHeavyIcon'] = ammoTypeHeavyIcon;
			data['ammoTypeSpecialIcon'] = ammoTypeSpecialIcon;
			data['ammoTypePrimaryIcon'] = ammoTypePrimaryIcon;
	}
}