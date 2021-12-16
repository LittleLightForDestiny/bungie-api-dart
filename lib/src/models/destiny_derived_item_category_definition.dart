import 'package:json_annotation/json_annotation.dart';

import 'destiny_derived_item_definition.dart';

part 'destiny_derived_item_category_definition.g.dart';

/// A shortcut for the fact that some items have a &quot;Preview Vendor&quot; - See DestinyInventoryItemDefinition.preview.previewVendorHash - that is intended to be used to show what items you can get as a result of acquiring or using this item.
/// A common example of this in Destiny 1 was Eververse &quot;Boxes,&quot; which could have many possible items. This &quot;Preview Vendor&quot; is not a vendor you can actually see in the game, but it defines categories and sale items for all of the possible items you could get from the Box so that the game can show them to you. We summarize that info here so that you don&#39;t have to do that Vendor lookup and aggregation manually.
@JsonSerializable()
class DestinyDerivedItemCategoryDefinition{
	
	DestinyDerivedItemCategoryDefinition();

	factory DestinyDerivedItemCategoryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyDerivedItemCategoryDefinitionFromJson(json);
	}

	/// The localized string for the category title. This will be something describing the items you can get as a group, or your likelihood/the quantity you'll get.
	@JsonKey(name:'categoryDescription')
	String? categoryDescription;
	/// This is the list of all of the items for this category and the basic properties we'll know about them.
	@JsonKey(name:'items')
	List<DestinyDerivedItemDefinition>? items;

	
	
	Map<String, dynamic> toJson() => _$DestinyDerivedItemCategoryDefinitionToJson(this);
}