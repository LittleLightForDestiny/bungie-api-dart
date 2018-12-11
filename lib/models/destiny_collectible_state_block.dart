import 'destiny_presentation_node_requirements_block.dart';
class DestinyCollectibleStateBlock{
	int obscuredOverrideItemHash;
	DestinyPresentationNodeRequirementsBlock requirements;
	DestinyCollectibleStateBlock(
		int this.obscuredOverrideItemHash,
		DestinyPresentationNodeRequirementsBlock this.requirements,
	);

	static DestinyCollectibleStateBlock fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleStateBlock(
				data['obscuredOverrideItemHash'],
				DestinyPresentationNodeRequirementsBlock.fromJson(data['requirements']),
		);
	}

	static List<DestinyCollectibleStateBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleStateBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleStateBlock.fromJson(item));
    });
    return list;
	}
}