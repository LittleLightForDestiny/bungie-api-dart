import 'destiny_material_requirement.dart';
import 'destiny_talent_node_stat_block.dart';
class DestinyTalentNode{
	int nodeIndex;
	int nodeHash;
	int state;
	bool isActivated;
	int stepIndex;
	List<DestinyMaterialRequirement> materialsToUpgrade;
	int activationGridLevel;
	int progressPercent;
	bool hidden;
	DestinyTalentNodeStatBlock nodeStatsBlock;
	DestinyTalentNode(
		int this.nodeIndex,
		int this.nodeHash,
		int this.state,
		bool this.isActivated,
		int this.stepIndex,
		List<DestinyMaterialRequirement> this.materialsToUpgrade,
		int this.activationGridLevel,
		int this.progressPercent,
		bool this.hidden,
		DestinyTalentNodeStatBlock this.nodeStatsBlock,
	);

	static DestinyTalentNode fromJson(Map<String, dynamic> data){
		return new DestinyTalentNode(
				data['nodeIndex'],
				data['nodeHash'],
				data['state'],
				data['isActivated'],
				data['stepIndex'],
				DestinyMaterialRequirement.fromList(data['materialsToUpgrade']),
				data['activationGridLevel'],
				data['progressPercent'],
				data['hidden'],
				data['nodeStatsBlock'],
		);
	}

	static List<DestinyTalentNode> fromList(List<dynamic> data){
		List<DestinyTalentNode> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNode.fromJson(item));
    });
    return list;
	}
}