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

	static Destiny2CoreSettings fromJson(Map<String, dynamic> data){
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
		List<Destiny2CoreSettings> list = new List();
    data.forEach((item) {
      list.add(Destiny2CoreSettings.fromJson(item));
    });
    return list;
	}
}