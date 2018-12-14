import 'destiny_public_milestone.dart';
import 'destiny_milestone_content.dart';
class TrendingEntryDestinyRitual{
	String image;
	String icon;
	String title;
	String subtitle;
	String dateStart;
	String dateEnd;
	DestinyPublicMilestone milestoneDetails;
	DestinyMilestoneContent eventContent;
	TrendingEntryDestinyRitual(
		this.image,
		this.icon,
		this.title,
		this.subtitle,
		this.dateStart,
		this.dateEnd,
		this.milestoneDetails,
		this.eventContent,
	);

	static TrendingEntryDestinyRitual fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryDestinyRitual(
				data['image'],
				data['icon'],
				data['title'],
				data['subtitle'],
				data['dateStart'],
				data['dateEnd'],
				data['milestoneDetails'] != null ? DestinyPublicMilestone.fromMap(data['milestoneDetails']) : null,
				data['eventContent'] != null ? DestinyMilestoneContent.fromMap(data['eventContent']) : null,
		);
	}

	static List<TrendingEntryDestinyRitual> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryDestinyRitual> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryDestinyRitual.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['image'] = this.image;
			data['icon'] = this.icon;
			data['title'] = this.title;
			data['subtitle'] = this.subtitle;
			data['dateStart'] = this.dateStart;
			data['dateEnd'] = this.dateEnd;
			data['milestoneDetails'] = this.milestoneDetails;
			data['eventContent'] = this.eventContent;
		return data;
	}
}