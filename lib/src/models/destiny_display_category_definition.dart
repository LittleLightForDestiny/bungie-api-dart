import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/vendor_display_category_sort_order.dart';

part 'destiny_display_category_definition.g.dart';

/// Display Categories are different from &quot;categories&quot; in that these are specifically for visual grouping and display of categories in Vendor UI. The &quot;categories&quot; structure is for validation of the contained items, and can be categorized entirely separately from &quot;Display Categories&quot;, there need be and often will be no meaningful relationship between the two.
@JsonSerializable()
class DestinyDisplayCategoryDefinition{	
	DestinyDisplayCategoryDefinition();

	
	@JsonKey(name:'index')
	int? index;
	
	/// A string identifier for the display category.
	@JsonKey(name:'identifier')
	String? identifier;
	
	@JsonKey(name:'displayCategoryHash')
	int? displayCategoryHash;
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// If true, this category should be displayed in the "Banner" section of the vendor's UI.
	@JsonKey(name:'displayInBanner')
	bool? displayInBanner;
	
	/// If it exists, this is the hash identifier of a DestinyProgressionDefinition that represents the progression to show on this display category.
	/// Specific categories can now have thier own distinct progression, apparently. So that's cool.
	@JsonKey(name:'progressionHash')
	int? progressionHash;
	
	/// If this category sorts items in a nonstandard way, this will be the way we sort.
	@JsonKey(name:'sortOrder',fromJson:decodeVendorDisplayCategorySortOrder,toJson:encodeVendorDisplayCategorySortOrder)
	VendorDisplayCategorySortOrder? sortOrder;
	
	/// An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category.
	@JsonKey(name:'displayStyleHash')
	int? displayStyleHash;
	
	/// An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category.
	@JsonKey(name:'displayStyleIdentifier')
	String? displayStyleIdentifier;

	factory DestinyDisplayCategoryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyDisplayCategoryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyDisplayCategoryDefinitionToJson(this);

	static Future<DestinyDisplayCategoryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyDisplayCategoryDefinition>((json)=>DestinyDisplayCategoryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}