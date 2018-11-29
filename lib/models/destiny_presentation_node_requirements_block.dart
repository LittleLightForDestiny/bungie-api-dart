class DestinyPresentationNodeRequirementsBlock{
	String entitlementUnavailableMessage;
	DestinyPresentationNodeRequirementsBlock(
		String this.entitlementUnavailableMessage,
	);

	static DestinyPresentationNodeRequirementsBlock fromJson(Map<String, dynamic> data){
		return new DestinyPresentationNodeRequirementsBlock(
				data['entitlementUnavailableMessage'],
		);
	}

	static List<DestinyPresentationNodeRequirementsBlock> fromList(List<dynamic> data){
		List<DestinyPresentationNodeRequirementsBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeRequirementsBlock.fromJson(item));
    });
    return list;
	}
}