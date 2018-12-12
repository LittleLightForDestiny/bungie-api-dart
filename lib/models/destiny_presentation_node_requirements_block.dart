class DestinyPresentationNodeRequirementsBlock{
	String entitlementUnavailableMessage;
	DestinyPresentationNodeRequirementsBlock(
		String this.entitlementUnavailableMessage,
	);

	static DestinyPresentationNodeRequirementsBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeRequirementsBlock(
				data['entitlementUnavailableMessage'],
		);
	}

	static List<DestinyPresentationNodeRequirementsBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeRequirementsBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeRequirementsBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['entitlementUnavailableMessage'] = this.entitlementUnavailableMessage;
		return data;
	}
}