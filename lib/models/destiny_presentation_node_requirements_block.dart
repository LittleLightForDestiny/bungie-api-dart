
/** Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren't met. */
class DestinyPresentationNodeRequirementsBlock{
	
	/** If this node is not accessible due to Entitlements (for instance, you don't own the required game expansion), this is the message to show. */
	String entitlementUnavailableMessage;
	DestinyPresentationNodeRequirementsBlock(
		this.entitlementUnavailableMessage,
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