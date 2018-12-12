import 'destiny_milestone_content_item_category.dart';
class DestinyMilestoneContent{
	String about;
	String status;
	List<String> tips;
	List<DestinyMilestoneContentItemCategory> itemCategories;
	DestinyMilestoneContent(
		String this.about,
		String this.status,
		List<String> this.tips,
		List<DestinyMilestoneContentItemCategory> this.itemCategories,
	);

	static DestinyMilestoneContent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneContent(
				data['about'],
				data['status'],
				data['tips'],
				DestinyMilestoneContentItemCategory.fromList(data['itemCategories']),
		);
	}

	static List<DestinyMilestoneContent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneContent> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneContent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['about'] = this.about;
			data['status'] = this.status;
			data['tips'] = this.tips;
			data['itemCategories'] = this.itemCategories.map((item)=>item.toMap()).toList();
		return data;
	}
}