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

	static DestinyPresentationNodeChildrenBlock fromJson(Map<String, dynamic> data){
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
      list.add(DestinyPresentationNodeChildrenBlock.fromJson(item));
    });
    return list;
	}
}