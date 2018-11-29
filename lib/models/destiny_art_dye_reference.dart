class DestinyArtDyeReference{
	int artDyeChannelHash;
	DestinyArtDyeReference(
		int this.artDyeChannelHash,
	);

	static DestinyArtDyeReference fromJson(Map<String, dynamic> data){
		return new DestinyArtDyeReference(
				data['artDyeChannelHash'],
		);
	}

	static List<DestinyArtDyeReference> fromList(List<dynamic> data){
		List<DestinyArtDyeReference> list = new List();
    data.forEach((item) {
      list.add(DestinyArtDyeReference.fromJson(item));
    });
    return list;
	}
}