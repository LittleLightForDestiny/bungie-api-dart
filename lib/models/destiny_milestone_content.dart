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

	static DestinyMilestoneContent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyMilestoneContent.fromJson(item));
    });
    return list;
	}
}