import 'destiny_talent_node.dart';
import 'destiny_progression.dart';
class DestinyItemTalentGridComponent{
	int talentGridHash;
	List<DestinyTalentNode> nodes;
	bool isGridComplete;
	DestinyProgression gridProgression;
	DestinyItemTalentGridComponent(
		int this.talentGridHash,
		List<DestinyTalentNode> this.nodes,
		bool this.isGridComplete,
		DestinyProgression this.gridProgression,
	);

	static DestinyItemTalentGridComponent fromJson(Map<String, dynamic> data){
		return new DestinyItemTalentGridComponent(
				data['talentGridHash'],
				DestinyTalentNode.fromList(data['nodes']),
				data['isGridComplete'],
				data['gridProgression'],
		);
	}

	static List<DestinyItemTalentGridComponent> fromList(List<dynamic> data){
		List<DestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTalentGridComponent.fromJson(item));
    });
    return list;
	}
}