import 'destiny_milestone_content_item_category.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_content.g.dart';

/// Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint.
@JsonSerializable()
class DestinyMilestoneContent {

	/// The &quot;About this Milestone&quot; text from the Firehose.
	@JsonKey(name:'about')
	String about;

	/// The Current Status of the Milestone, as driven by the Firehose.
	@JsonKey(name:'status')
	String status;

	/// A list of tips, provided by the Firehose.
	@JsonKey(name:'tips')
	List<String> tips;

	/// If DPS has defined items related to this Milestone, they can categorize those items in the Firehose. That data will then be returned as item categories here.
	@JsonKey(name:'itemCategories')
	List<DestinyMilestoneContentItemCategory> itemCategories;
	DestinyMilestoneContent();

	factory DestinyMilestoneContent.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneContentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneContentToJson(this);
}
