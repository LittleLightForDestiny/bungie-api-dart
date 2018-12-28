
/*  */
class DestinyArtDyeReference{
	
	/*  */
	int artDyeChannelHash;
	DestinyArtDyeReference(
		this.artDyeChannelHash,
	);

	static DestinyArtDyeReference fromMap(Map<String, dynamic> data){
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
      list.add(DestinyArtDyeReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['artDyeChannelHash'] = this.artDyeChannelHash;
		return data;
	}
}