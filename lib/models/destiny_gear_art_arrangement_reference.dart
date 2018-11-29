class DestinyGearArtArrangementReference{
	int classHash;
	int artArrangementHash;
	DestinyGearArtArrangementReference(
		int this.classHash,
		int this.artArrangementHash,
	);

	static DestinyGearArtArrangementReference fromJson(Map<String, dynamic> data){
		return new DestinyGearArtArrangementReference(
				data['classHash'],
				data['artArrangementHash'],
		);
	}

	static List<DestinyGearArtArrangementReference> fromList(List<dynamic> data){
		List<DestinyGearArtArrangementReference> list = new List();
    data.forEach((item) {
      list.add(DestinyGearArtArrangementReference.fromJson(item));
    });
    return list;
	}
}