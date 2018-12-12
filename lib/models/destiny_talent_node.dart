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

	static DestinyTalentNode fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyTalentNode> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNode.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeIndex'] = nodeIndex;
			data['nodeHash'] = nodeHash;
			data['state'] = state;
			data['isActivated'] = isActivated;
			data['stepIndex'] = stepIndex;
			data['materialsToUpgrade'] = materialsToUpgrade.map((item)=>item.toMap());
			data['activationGridLevel'] = activationGridLevel;
			data['progressPercent'] = progressPercent;
			data['hidden'] = hidden;
			data['nodeStatsBlock'] = nodeStatsBlock;
	}
}