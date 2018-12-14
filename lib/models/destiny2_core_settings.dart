class Destiny2CoreSettings{
	int collectionRootNode;
	int badgesRootNode;
	int recordsRootNode;
	int medalsRootNode;
	List<int> currentRankProgressionHashes;
	String undiscoveredCollectibleImage;
	String ammoTypeHeavyIcon;
	String ammoTypeSpecialIcon;
	String ammoTypePrimaryIcon;
	Destiny2CoreSettings(
		this.collectionRootNode,
		this.badgesRootNode,
		this.recordsRootNode,
		this.medalsRootNode,
		this.currentRankProgressionHashes,
		this.undiscoveredCollectibleImage,
		this.ammoTypeHeavyIcon,
		this.ammoTypeSpecialIcon,
		this.ammoTypePrimaryIcon,
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
				data['currentRankProgressionHashes'] != null ? data['currentRankProgressionHashes']?.cast<int>() ?? null : null,
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
			data['collectionRootNode'] = this.collectionRootNode;
			data['badgesRootNode'] = this.badgesRootNode;
			data['recordsRootNode'] = this.recordsRootNode;
			data['medalsRootNode'] = this.medalsRootNode;
			data['currentRankProgressionHashes'] = this.currentRankProgressionHashes;
			data['undiscoveredCollectibleImage'] = this.undiscoveredCollectibleImage;
			data['ammoTypeHeavyIcon'] = this.ammoTypeHeavyIcon;
			data['ammoTypeSpecialIcon'] = this.ammoTypeSpecialIcon;
			data['ammoTypePrimaryIcon'] = this.ammoTypePrimaryIcon;
		return data;
	}
}