import 'destiny_public_milestone.dart';
import 'destiny_milestone_content.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_entry_destiny_ritual.g.dart';

@JsonSerializable()
class TrendingEntryDestinyRitual {

	@JsonKey(name:'image')
	String image;

	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'title')
	String title;

	@JsonKey(name:'subtitle')
	String subtitle;

	@JsonKey(name:'dateStart')
	String dateStart;

	@JsonKey(name:'dateEnd')
	String dateEnd;

	/// A destiny event does not necessarily have a related Milestone, but if it does the details will be returned here.
	@JsonKey(name:'milestoneDetails')
	DestinyPublicMilestone milestoneDetails;

	/// A destiny event will not necessarily have milestone &quot;custom content&quot;, but if it does the details will be here.
	@JsonKey(name:'eventContent')
	DestinyMilestoneContent eventContent;
	TrendingEntryDestinyRitual();

	factory TrendingEntryDestinyRitual.fromJson(Map<String, dynamic> json) => _$TrendingEntryDestinyRitualFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyRitualToJson(this);
}
