import 'destiny_presentation_node_component.dart';
class DestinyPresentationNodesComponent{
	Map<DestinyPresentationNodeComponent, dynamic> nodes;
	DestinyPresentationNodesComponent(
		Map<DestinyPresentationNodeComponent, dynamic> this.nodes,
	);

	static DestinyPresentationNodesComponent fromJson(Map<String, dynamic> data){
		return new DestinyPresentationNodesComponent(
				data['nodes'],
		);
	}

	static List<DestinyPresentationNodesComponent> fromList(List<dynamic> data){
		List<DestinyPresentationNodesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodesComponent.fromJson(item));
    });
    return list;
	}
}