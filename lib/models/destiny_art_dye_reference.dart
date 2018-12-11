class DestinyArtDyeReference{
	int artDyeChannelHash;
	DestinyArtDyeReference(
		int this.artDyeChannelHash,
	);

	static DestinyArtDyeReference fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyArtDyeReference(
				data['artDyeChannelHash'],
		);
	}

	static List<DestinyArtDyeReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyArtDyeReference> list = new List();
    data.forEach((item) {
      list.add(DestinyArtDyeReference.fromJson(item));
    });
    return list;
	}
}