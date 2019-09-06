
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_content_item_category.g.dart';

/// Part of our dynamic, localized Milestone content is arbitrary categories of items. These are built in our content management system, and thus aren&#39;t the same as programmatically generated rewards.
@JsonSerializable()
class DestinyMilestoneContentItemCategory {

	@JsonKey(name:'title')
	String title;

	@JsonKey(name:'itemHashes')
	List<int> itemHashes;
	DestinyMilestoneContentItemCategory();

	factory DestinyMilestoneContentItemCategory.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneContentItemCategoryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneContentItemCategoryToJson(this);
}
