class HyperlinkReference{
	String title;
	String url;
	HyperlinkReference(
		String this.title,
		String this.url,
	);

	static HyperlinkReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new HyperlinkReference(
				data['title'],
				data['url'],
		);
	}

	static List<HyperlinkReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<HyperlinkReference> list = new List();
    data.forEach((item) {
      list.add(HyperlinkReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['title'] = title;
			data['url'] = url;
	}
}