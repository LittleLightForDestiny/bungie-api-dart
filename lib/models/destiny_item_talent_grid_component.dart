import 'destiny_talent_node.dart';
import 'destiny_progression.dart';
class DestinyItemTalentGridComponent{
	int talentGridHash;
	List<DestinyTalentNode> nodes;
	bool isGridComplete;
	DestinyProgression gridProgression;
	DestinyItemTalentGridComponent(
		this.talentGridHash,
		this.nodes,
		this.isGridComplete,
		this.gridProgression,
	);

	static DestinyItemTalentGridComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTalentGridComponent(
				data['talentGridHash'],
				data['nodes'] != null ? DestinyTalentNode.fromList(data['nodes']) : null,
				data['isGridComplete'],
				data['gridProgression'] != null ? DestinyProgression.fromMap(data['gridProgression']) : null,
		);
	}

	static List<DestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTalentGridComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['talentGridHash'] = this.talentGridHash;
			data['nodes'] = this.nodes.map((item)=>item.toMap()).toList();
			data['isGridComplete'] = this.isGridComplete;
			data['gridProgression'] = this.gridProgression;
		return data;
	}
}