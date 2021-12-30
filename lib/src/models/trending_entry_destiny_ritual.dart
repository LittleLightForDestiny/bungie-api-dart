import 'package:json_annotation/json_annotation.dart';

import 'destiny_public_milestone.dart';
import 'destiny_milestone_content.dart';

part 'trending_entry_destiny_ritual.g.dart';

@JsonSerializable()
class TrendingEntryDestinyRitual{	
	TrendingEntryDestinyRitual();

	factory TrendingEntryDestinyRitual.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryDestinyRitualFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyRitualToJson(this);
	
	@JsonKey(name:'image')
	String? image;
	
	@JsonKey(name:'icon')
	String? icon;
	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'subtitle')
	String? subtitle;
	
	@JsonKey(name:'dateStart')
	String? dateStart;
	
	@JsonKey(name:'dateEnd')
	String? dateEnd;
	
	/// A destiny event does not necessarily have a related Milestone, but if it does the details will be returned here.
	@JsonKey(name:'milestoneDetails')
	DestinyPublicMilestone? milestoneDetails;
	
	/// A destiny event will not necessarily have milestone "custom content", but if it does the details will be here.
	@JsonKey(name:'eventContent')
	DestinyMilestoneContent? eventContent;
}