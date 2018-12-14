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
	double progressPercent;
	bool hidden;
	DestinyTalentNodeStatBlock nodeStatsBlock;
	DestinyTalentNode(
		this.nodeIndex,
		this.nodeHash,
		this.state,
		this.isActivated,
		this.stepIndex,
		this.materialsToUpgrade,
		this.activationGridLevel,
		this.progressPercent,
		this.hidden,
		this.nodeStatsBlock,
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
				data['materialsToUpgrade'] != null ? DestinyMaterialRequirement.fromList(data['materialsToUpgrade']) : null,
				data['activationGridLevel'],
				data['progressPercent'],
				data['hidden'],
				data['nodeStatsBlock'] != null ? DestinyTalentNodeStatBlock.fromMap(data['nodeStatsBlock']) : null,
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
			data['nodeIndex'] = this.nodeIndex;
			data['nodeHash'] = this.nodeHash;
			data['state'] = this.state;
			data['isActivated'] = this.isActivated;
			data['stepIndex'] = this.stepIndex;
			data['materialsToUpgrade'] = this.materialsToUpgrade.map((item)=>item.toMap()).toList();
			data['activationGridLevel'] = this.activationGridLevel;
			data['progressPercent'] = this.progressPercent;
			data['hidden'] = this.hidden;
			data['nodeStatsBlock'] = this.nodeStatsBlock;
		return data;
	}
}