
/** If this record has an expiration after which it cannot be earned, this is some information about that expiration. */
class DestinyRecordExpirationBlock{
	
	/**  */
	bool hasExpiration;
	
	/**  */
	String description;
	
	/**  */
	String icon;
	DestinyRecordExpirationBlock(
		this.hasExpiration,
		this.description,
		this.icon,
	);

	static DestinyRecordExpirationBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordExpirationBlock(
				data['hasExpiration'],
				data['description'],
				data['icon'],
		);
	}

	static List<DestinyRecordExpirationBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordExpirationBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordExpirationBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hasExpiration'] = this.hasExpiration;
			data['description'] = this.description;
			data['icon'] = this.icon;
		return data;
	}
}