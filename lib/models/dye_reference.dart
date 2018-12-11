class DyeReference{
	int channelHash;
	int dyeHash;
	DyeReference(
		int this.channelHash,
		int this.dyeHash,
	);

	static DyeReference fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DyeReference(
				data['channelHash'],
				data['dyeHash'],
		);
	}

	static List<DyeReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DyeReference> list = new List();
    data.forEach((item) {
      list.add(DyeReference.fromJson(item));
    });
    return list;
	}
}