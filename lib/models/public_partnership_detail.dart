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

	static PublicPartnershipDetail fromJson(Map<String, dynamic> data){
		return new PublicPartnershipDetail(
				data['partnerType'],
				data['identifier'],
				data['name'],
				data['icon'],
		);
	}

	static List<PublicPartnershipDetail> fromList(List<dynamic> data){
		List<PublicPartnershipDetail> list = new List();
    data.forEach((item) {
      list.add(PublicPartnershipDetail.fromJson(item));
    });
    return list;
	}
}