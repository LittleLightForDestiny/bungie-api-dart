import 'destiny_presentation_node_component.dart';
class DestinyPresentationNodesComponent{
	Map<String, DestinyPresentationNodeComponent> nodes;
	DestinyPresentationNodesComponent(
		this.nodes,
	);

	static DestinyPresentationNodesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodesComponent(
				data['nodes'] != null ? Map<String, DestinyPresentationNodeComponent>.from(data['nodes'].map((k, v)=>MapEntry(k, DestinyPresentationNodeComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyPresentationNodesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodes'] = this.nodes;
		return data;
	}
}