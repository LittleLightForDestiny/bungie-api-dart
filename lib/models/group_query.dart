class GroupQuery{
	String name;
	int groupType;
	int creationDate;
	int sortBy;
	int groupMemberCountFilter;
	String localeFilter;
	String tagText;
	int itemsPerPage;
	int currentPage;
	String requestContinuationToken;
	GroupQuery(
		String this.name,
		int this.groupType,
		int this.creationDate,
		int this.sortBy,
		int this.groupMemberCountFilter,
		String this.localeFilter,
		String this.tagText,
		int this.itemsPerPage,
		int this.currentPage,
		String this.requestContinuationToken,
	);

	static GroupQuery fromJson(Map<String, dynamic> data){
		return new GroupQuery(
				data['name'],
				data['groupType'],
				data['creationDate'],
				data['sortBy'],
				data['groupMemberCountFilter'],
				data['localeFilter'],
				data['tagText'],
				data['itemsPerPage'],
				data['currentPage'],
				data['requestContinuationToken'],
		);
	}

	static List<GroupQuery> fromList(List<dynamic> data){
		List<GroupQuery> list = new List();
    data.forEach((item) {
      list.add(GroupQuery.fromJson(item));
    });
    return list;
	}
}