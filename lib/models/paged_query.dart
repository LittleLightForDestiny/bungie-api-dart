class PagedQuery{
	int itemsPerPage;
	int currentPage;
	String requestContinuationToken;
	PagedQuery(
		int this.itemsPerPage,
		int this.currentPage,
		String this.requestContinuationToken,
	);

	static PagedQuery fromJson(Map<String, dynamic> data){
		return new PagedQuery(
				data['itemsPerPage'],
				data['currentPage'],
				data['requestContinuationToken'],
		);
	}

	static List<PagedQuery> fromList(List<dynamic> data){
		List<PagedQuery> list = new List();
    data.forEach((item) {
      list.add(PagedQuery.fromJson(item));
    });
    return list;
	}
}