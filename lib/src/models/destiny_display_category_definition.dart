import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_display_category_definition.g.dart';

/// Display Categories are different from &quot;categories&quot; in that these are specifically for visual grouping and display of categories in Vendor UI. The &quot;categories&quot; structure is for validation of the contained items, and can be categorized entirely separately from &quot;Display Categories&quot;, there need be and often will be no meaningful relationship between the two.
@JsonSerializable()
class DestinyDisplayCategoryDefinition {

	/// A string identifier for the display category.
	@JsonKey(name:'identifier')
	String identifier;

	@JsonKey(name:'displayCategoryHash')
	int displayCategoryHash;

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// If true, this category should be displayed in the &quot;Banner&quot; section of the vendor&#39;s UI.
	@JsonKey(name:'displayInBanner')
	bool displayInBanner;

	/// If it exists, this is the hash identifier of a DestinyProgressionDefinition that represents the progression to show on this display category.
	/// Specific categories can now have thier own distinct progression, apparently. So that&#39;s cool.
	@JsonKey(name:'progressionHash')
	int progressionHash;

	/// If this category sorts items in a nonstandard way, this will be the way we sort.
	@JsonKey(name:'sortOrder')
	int sortOrder;

	/// An indicator of how the category will be displayed in the UI. It&#39;s up to you to do something cool or interesting in response to this, or just to treat it as a normal category.
	@JsonKey(name:'displayStyleHash')
	int displayStyleHash;

	/// An indicator of how the category will be displayed in the UI. It&#39;s up to you to do something cool or interesting in response to this, or just to treat it as a normal category.
	@JsonKey(name:'displayStyleIdentifier')
	String displayStyleIdentifier;
	DestinyDisplayCategoryDefinition();

	factory DestinyDisplayCategoryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDisplayCategoryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDisplayCategoryDefinitionToJson(this);
}
