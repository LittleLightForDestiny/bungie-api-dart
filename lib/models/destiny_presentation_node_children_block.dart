import 'destiny_presentation_node_child_entry.dart';
import 'destiny_presentation_node_collectible_child_entry.dart';
import 'destiny_presentation_node_record_child_entry.dart';
class DestinyPresentationNodeChildrenBlock{
	List<DestinyPresentationNodeChildEntry> presentationNodes;
	List<DestinyPresentationNodeCollectibleChildEntry> collectibles;
	List<DestinyPresentationNodeRecordChildEntry> records;
	DestinyPresentationNodeChildrenBlock(
		this.presentationNodes,
		this.collectibles,
		this.records,
	);

	static DestinyPresentationNodeChildrenBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeChildrenBlock(
				data['presentationNodes'] != null ? DestinyPresentationNodeChildEntry.fromList(data['presentationNodes']) : null,
				data['collectibles'] != null ? DestinyPresentationNodeCollectibleChildEntry.fromList(data['collectibles']) : null,
				data['records'] != null ? DestinyPresentationNodeRecordChildEntry.fromList(data['records']) : null,
		);
	}

	static List<DestinyPresentationNodeChildrenBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeChildrenBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeChildrenBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['presentationNodes'] = this.presentationNodes.map((item)=>item.toMap()).toList();
			data['collectibles'] = this.collectibles.map((item)=>item.toMap()).toList();
			data['records'] = this.records.map((item)=>item.toMap()).toList();
		return data;
	}
}