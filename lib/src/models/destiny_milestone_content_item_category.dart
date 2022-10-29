import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_content_item_category.g.dart';

/// Part of our dynamic, localized Milestone content is arbitrary categories of items. These are built in our content management system, and thus aren&#39;t the same as programmatically generated rewards.
@JsonSerializable()
class DestinyMilestoneContentItemCategory{	
	DestinyMilestoneContentItemCategory();

	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'itemHashes')
	List<int>? itemHashes;

	factory DestinyMilestoneContentItemCategory.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneContentItemCategoryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneContentItemCategoryToJson(this);

	static Future<DestinyMilestoneContentItemCategory> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneContentItemCategory>((json)=>DestinyMilestoneContentItemCategory.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}