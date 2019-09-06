import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_kiosk_item.g.dart';

@JsonSerializable()
class DestinyKioskItem {

	/// The index of the item in the related DestinyVendorDefintion&#39;s itemList property, representing the sale.
	@JsonKey(name:'index')
	int index;

	/// If true, the user can not only see the item, but they can acquire it. It is possible that a user can see a kiosk item and not be able to acquire it.
	@JsonKey(name:'canAcquire')
	bool canAcquire;

	/// Indexes into failureStrings for the Vendor, indicating the reasons why it failed if any.
	@JsonKey(name:'failureIndexes')
	List<int> failureIndexes;

	/// I may regret naming it this way - but this represents when an item has an objective that doesn&#39;t serve a beneficial purpose, but rather is used for &quot;flavor&quot; or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item.
	@JsonKey(name:'flavorObjective')
	DestinyObjectiveProgress flavorObjective;
	DestinyKioskItem();

	factory DestinyKioskItem.fromJson(Map<String, dynamic> json) => _$DestinyKioskItemFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyKioskItemToJson(this);
}
