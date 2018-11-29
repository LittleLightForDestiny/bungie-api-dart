class DestinyAnimationReference{
	String animName;
	String animIdentifier;
	String path;
	DestinyAnimationReference(
		String this.animName,
		String this.animIdentifier,
		String this.path,
	);

	static DestinyAnimationReference fromJson(Map<String, dynamic> data){
		return new DestinyAnimationReference(
				data['animName'],
				data['animIdentifier'],
				data['path'],
		);
	}

	static List<DestinyAnimationReference> fromList(List<dynamic> data){
		List<DestinyAnimationReference> list = new List();
    data.forEach((item) {
      list.add(DestinyAnimationReference.fromJson(item));
    });
    return list;
	}
}