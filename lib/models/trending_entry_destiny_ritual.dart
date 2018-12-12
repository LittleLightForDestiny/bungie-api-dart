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
		String this.image,
		String this.icon,
		String this.title,
		String this.subtitle,
		String this.dateStart,
		String this.dateEnd,
		DestinyPublicMilestone this.milestoneDetails,
		DestinyMilestoneContent this.eventContent,
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
				data['milestoneDetails'],
				data['eventContent'],
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
			data['image'] = image;
			data['icon'] = icon;
			data['title'] = title;
			data['subtitle'] = subtitle;
			data['dateStart'] = dateStart;
			data['dateEnd'] = dateEnd;
			data['milestoneDetails'] = milestoneDetails;
			data['eventContent'] = eventContent;
	}
}