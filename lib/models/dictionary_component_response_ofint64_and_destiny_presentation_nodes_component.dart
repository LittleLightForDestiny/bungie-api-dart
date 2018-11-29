import 'destiny_presentation_nodes_component.dart';
class DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent{
	Map<DestinyPresentationNodesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent(
		Map<DestinyPresentationNodesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(item));
    });
    return list;
	}
}