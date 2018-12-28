import 'destiny_milestone_content_item_category.dart';

/** Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint. */
class DestinyMilestoneContent{
	
	/** The "About this Milestone" text from the Firehose. */
	String about;
	
	/** The Current Status of the Milestone, as driven by the Firehose. */
	String status;
	
	/** A list of tips, provided by the Firehose. */
	List<String> tips;
	
	/** If DPS has defined items related to this Milestone, they can categorize those items in the Firehose. That data will then be returned as item categories here. */
	List<DestinyMilestoneContentItemCategory> itemCategories;
	DestinyMilestoneContent(
		this.about,
		this.status,
		this.tips,
		this.itemCategories,
	);

	static DestinyMilestoneContent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneContent(
				data['about'],
				data['status'],
				data['tips'] != null ? data['tips']?.cast<String>() ?? null : null,
				data['itemCategories'] != null ? DestinyMilestoneContentItemCategory.fromList(data['itemCategories']) : null,
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