
/**  */
class PagedQuery{
	
	/**  */
	int itemsPerPage;
	
	/**  */
	int currentPage;
	
	/**  */
	String requestContinuationToken;
	PagedQuery(
		this.itemsPerPage,
		this.currentPage,
		this.requestContinuationToken,
	);

	static PagedQuery fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PagedQuery(
				data['itemsPerPage'],
				data['currentPage'],
				data['requestContinuationToken'],
		);
	}

	static List<PagedQuery> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PagedQuery> list = new List();
    data.forEach((item) {
      list.add(PagedQuery.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemsPerPage'] = this.itemsPerPage;
			data['currentPage'] = this.currentPage;
			data['requestContinuationToken'] = this.requestContinuationToken;
		return data;
	}
}