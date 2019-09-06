
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_vendor.g.dart';

/// If a Milestone has one or more Vendors that are relevant to it, this will contain information about that vendor that you can choose to show.
@JsonSerializable()
class DestinyMilestoneVendor {

	/// The hash identifier of the Vendor related to this Milestone. You can show useful things from this, such as thier Faction icon or whatever you might care about.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// If this vendor is featuring a specific item for this event, this will be the hash identifier of that item. I&#39;m taking bets now on how long we go before this needs to be a list or some other, more complex representation instead and I deprecate this too. I&#39;m going to go with 5 months. Calling it now, 2017-09-14 at 9:46pm PST.
	@JsonKey(name:'previewItemHash')
	int previewItemHash;
	DestinyMilestoneVendor();

	factory DestinyMilestoneVendor.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneVendorFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneVendorToJson(this);
}
