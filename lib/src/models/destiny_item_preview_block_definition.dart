import 'destiny_derived_item_category_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_preview_block_definition.g.dart';

/** Items like Sacks or Boxes can have items that it shows in-game when you view details that represent the items you can obtain if you use or acquire the item.
This defines those categories, and gives some insights into that data's source. */
@JsonSerializable()
class DestinyItemPreviewBlockDefinition{
	
	/** A string that the game UI uses as a hint for which detail screen to show for the item. You, too, can leverage this for your own custom screen detail views. Note, however, that these are arbitrarily defined by designers: there's no guarantees of a fixed, known number of these - so fall back to something reasonable if you don't recognize it. */
	@JsonKey(name:'screenStyle')
	String screenStyle;
	
	/** If the preview data is derived from a fake "Preview" Vendor, this will be the hash identifier for the DestinyVendorDefinition of that fake vendor. */
	@JsonKey(name:'previewVendorHash')
	int previewVendorHash;
	
	/** If the preview has an associated action (like "Open"), this will be the localized string for that action. */
	@JsonKey(name:'previewActionString')
	String previewActionString;
	
	/** This is a list of the items being previewed, categorized in the same way as they are in the preview UI. */
	@JsonKey(name:'derivedItemCategories')
	List<DestinyDerivedItemCategoryDefinition> derivedItemCategories;
	DestinyItemPreviewBlockDefinition();

	factory DestinyItemPreviewBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemPreviewBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemPreviewBlockDefinitionToJson(this);
}