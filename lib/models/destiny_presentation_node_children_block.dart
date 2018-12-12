import 'destiny_presentation_node_child_entry.dart';
import 'destiny_presentation_node_collectible_child_entry.dart';
import 'destiny_presentation_node_record_child_entry.dart';
class DestinyPresentationNodeChildrenBlock{
	List<DestinyPresentationNodeChildEntry> presentationNodes;
	List<DestinyPresentationNodeCollectibleChildEntry> collectibles;
	List<DestinyPresentationNodeRecordChildEntry> records;
	DestinyPresentationNodeChildrenBlock(
		List<DestinyPresentationNodeChildEntry> this.presentationNodes,
		List<DestinyPresentationNodeCollectibleChildEntry> this.collectibles,
		List<DestinyPresentationNodeRecordChildEntry> this.records,
	);

	static DestinyPresentationNodeChildrenBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeChildrenBlock(
				DestinyPresentationNodeChildEntry.fromList(data['presentationNodes']),
				DestinyPresentationNodeCollectibleChildEntry.fromList(data['collectibles']),
				DestinyPresentationNodeRecordChildEntry.fromList(data['records']),
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