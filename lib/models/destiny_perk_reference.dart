class DestinyPerkReference{
	int perkHash;
	String iconPath;
	bool isActive;
	bool visible;
	DestinyPerkReference(
		int this.perkHash,
		String this.iconPath,
		bool this.isActive,
		bool this.visible,
	);

	static DestinyPerkReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPerkReference(
				data['perkHash'],
				data['iconPath'],
				data['isActive'],
				data['visible'],
		);
	}

	static List<DestinyPerkReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPerkReference> list = new List();
    data.forEach((item) {
      list.add(DestinyPerkReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['perkHash'] = this.perkHash;
			data['iconPath'] = this.iconPath;
			data['isActive'] = this.isActive;
			data['visible'] = this.visible;
		return data;
	}
}