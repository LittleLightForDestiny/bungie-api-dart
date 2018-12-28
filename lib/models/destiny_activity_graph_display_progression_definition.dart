
/* When a Graph needs to show active Progressions, this defines those objectives as well as an identifier. */
class DestinyActivityGraphDisplayProgressionDefinition{
	
	/*  */
	int id;
	
	/*  */
	int progressionHash;
	DestinyActivityGraphDisplayProgressionDefinition(
		this.id,
		this.progressionHash,
	);

	static DestinyActivityGraphDisplayProgressionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphDisplayProgressionDefinition(
				data['id'],
				data['progressionHash'],
		);
	}

	static List<DestinyActivityGraphDisplayProgressionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphDisplayProgressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDisplayProgressionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['id'] = this.id;
			data['progressionHash'] = this.progressionHash;
		return data;
	}
}