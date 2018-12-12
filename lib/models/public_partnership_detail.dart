class PublicPartnershipDetail{
	int partnerType;
	String identifier;
	String name;
	String icon;
	PublicPartnershipDetail(
		int this.partnerType,
		String this.identifier,
		String this.name,
		String this.icon,
	);

	static PublicPartnershipDetail fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PublicPartnershipDetail(
				data['partnerType'],
				data['identifier'],
				data['name'],
				data['icon'],
		);
	}

	static List<PublicPartnershipDetail> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PublicPartnershipDetail> list = new List();
    data.forEach((item) {
      list.add(PublicPartnershipDetail.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['partnerType'] = this.partnerType;
			data['identifier'] = this.identifier;
			data['name'] = this.name;
			data['icon'] = this.icon;
		return data;
	}
}