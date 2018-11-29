class HyperlinkReference{
	String title;
	String url;
	HyperlinkReference(
		String this.title,
		String this.url,
	);

	static HyperlinkReference fromJson(Map<String, dynamic> data){
		return new HyperlinkReference(
				data['title'],
				data['url'],
		);
	}

	static List<HyperlinkReference> fromList(List<dynamic> data){
		List<HyperlinkReference> list = new List();
    data.forEach((item) {
      list.add(HyperlinkReference.fromJson(item));
    });
    return list;
	}
}