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

	static DestinyPerkReference fromJson(Map<String, dynamic> data){
		return new DestinyPerkReference(
				data['perkHash'],
				data['iconPath'],
				data['isActive'],
				data['visible'],
		);
	}

	static List<DestinyPerkReference> fromList(List<dynamic> data){
		List<DestinyPerkReference> list = new List();
    data.forEach((item) {
      list.add(DestinyPerkReference.fromJson(item));
    });
    return list;
	}
}