
/**  */
class DestinyAnimationReference{
	
	/**  */
	String animName;
	
	/**  */
	String animIdentifier;
	
	/**  */
	String path;
	DestinyAnimationReference(
		this.animName,
		this.animIdentifier,
		this.path,
	);

	static DestinyAnimationReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAnimationReference(
				data['animName'],
				data['animIdentifier'],
				data['path'],
		);
	}

	static List<DestinyAnimationReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyAnimationReference> list = new List();
    data.forEach((item) {
      list.add(DestinyAnimationReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['animName'] = this.animName;
			data['animIdentifier'] = this.animIdentifier;
			data['path'] = this.path;
		return data;
	}
}