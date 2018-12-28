
/*  */
class DestinyGearArtArrangementReference{
	
	/*  */
	int classHash;
	
	/*  */
	int artArrangementHash;
	DestinyGearArtArrangementReference(
		this.classHash,
		this.artArrangementHash,
	);

	static DestinyGearArtArrangementReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyGearArtArrangementReference(
				data['classHash'],
				data['artArrangementHash'],
		);
	}

	static List<DestinyGearArtArrangementReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyGearArtArrangementReference> list = new List();
    data.forEach((item) {
      list.add(DestinyGearArtArrangementReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['classHash'] = this.classHash;
			data['artArrangementHash'] = this.artArrangementHash;
		return data;
	}
}