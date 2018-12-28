
/** Nodes on a graph can be visually connected: this appears to be the information about which nodes to link. It appears to lack more detailed information, such as the path for that linking. */
class DestinyActivityGraphConnectionDefinition{
	
	/**  */
	int sourceNodeHash;
	
	/**  */
	int destNodeHash;
	DestinyActivityGraphConnectionDefinition(
		this.sourceNodeHash,
		this.destNodeHash,
	);

	static DestinyActivityGraphConnectionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphConnectionDefinition(
				data['sourceNodeHash'],
				data['destNodeHash'],
		);
	}

	static List<DestinyActivityGraphConnectionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphConnectionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphConnectionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sourceNodeHash'] = this.sourceNodeHash;
			data['destNodeHash'] = this.destNodeHash;
		return data;
	}
}