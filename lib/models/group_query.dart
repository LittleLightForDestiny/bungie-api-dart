
/** NOTE: GroupQuery, as of Destiny 2, has essentially two totally different and incompatible "modes".
If you are querying for a group, you can pass any of the properties below.
If you are querying for a Clan, you MUST NOT pass any of the following properties (they must be null or undefined in your request, not just empty string/default values):
- groupMemberCountFilter - localeFilter - tagText
If you pass these, you will get a useless InvalidParameters error. */
class GroupQuery{
	
	/**  */
	String name;
	
	/**  */
	int groupType;
	
	/**  */
	int creationDate;
	
	/**  */
	int sortBy;
	
	/**  */
	int groupMemberCountFilter;
	
	/**  */
	String localeFilter;
	
	/**  */
	String tagText;
	
	/**  */
	int itemsPerPage;
	
	/**  */
	int currentPage;
	
	/**  */
	String requestContinuationToken;
	GroupQuery(
		this.name,
		this.groupType,
		this.creationDate,
		this.sortBy,
		this.groupMemberCountFilter,
		this.localeFilter,
		this.tagText,
		this.itemsPerPage,
		this.currentPage,
		this.requestContinuationToken,
	);

	static GroupQuery fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<GroupQuery> list = new List();
    data.forEach((item) {
      list.add(GroupQuery.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
			data['groupType'] = this.groupType;
			data['creationDate'] = this.creationDate;
			data['sortBy'] = this.sortBy;
			data['groupMemberCountFilter'] = this.groupMemberCountFilter;
			data['localeFilter'] = this.localeFilter;
			data['tagText'] = this.tagText;
			data['itemsPerPage'] = this.itemsPerPage;
			data['currentPage'] = this.currentPage;
			data['requestContinuationToken'] = this.requestContinuationToken;
		return data;
	}
}