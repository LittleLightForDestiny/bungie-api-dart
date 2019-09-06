import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_category_definition.g.dart';

/// In an attempt to categorize items by type, usage, and other interesting properties, we created DestinyItemCategoryDefinition: information about types that is assembled using a set of heuristics that examine the properties of an item such as what inventory bucket it&#39;s in, its item type name, and whether it has or is missing certain blocks of data.
/// This heuristic is imperfect, however. If you find an item miscategorized, let us know on the Bungie API forums!
/// We then populate all of the categories that we think an item belongs to in its DestinyInventoryItemDefinition.itemCategoryHashes property. You can use that to provide your own custom item filtering, sorting, aggregating... go nuts on it! And let us know if you see more categories that you wish would be added!
@JsonSerializable()
class DestinyItemCategoryDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// If True, this category should be visible in UI. Sometimes we make categories that we don&#39;t think are interesting externally. It&#39;s up to you if you want to skip on showing them.
	@JsonKey(name:'visible')
	bool visible;

	/// If True, this category has been deprecated: it may have no items left, or there may be only legacy items that remain in it which are no longer relevant to the game.
	@JsonKey(name:'deprecated')
	bool deprecated;

	/// A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn&#39;t exist for D2... yet.
	@JsonKey(name:'shortTitle')
	String shortTitle;

	/// The janky regular expression we used against the item type to try and discern whether the item belongs to this category.
	@JsonKey(name:'itemTypeRegex')
	String itemTypeRegex;

	/// If the item is a plug, this is the identifier we expect to find associated with it if it is in this category.
	@JsonKey(name:'plugCategoryIdentifier')
	String plugCategoryIdentifier;

	/// If the item type matches this janky regex, it does *not* belong to this category.
	@JsonKey(name:'itemTypeRegexNot')
	String itemTypeRegexNot;

	/// If the item belongs to this bucket, it does belong to this category.
	@JsonKey(name:'originBucketIdentifier')
	String originBucketIdentifier;

	/// If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that&#39;s a story that requires more alcohol.
	@JsonKey(name:'grantDestinyItemType')
	int grantDestinyItemType;

	/// If an item belongs to this category, it will also receive this subtype enum value.
	/// I know what you&#39;re thinking - what if it belongs to multiple categories that provide sub-types?
	/// The last one processed wins, as is the case with all of these &quot;grant&quot; enums. Now you can see one reason why we moved away from these enums... but they&#39;re so convenient when they work, aren&#39;t they?
	@JsonKey(name:'grantDestinySubType')
	int grantDestinySubType;

	/// If an item belongs to this category, it will also get this class restriction enum value.
	/// See the other &quot;grant&quot;-prefixed properties on this definition for my color commentary.
	@JsonKey(name:'grantDestinyClass')
	int grantDestinyClass;

	/// If this category is a &quot;parent&quot; category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.
	/// In this way, you can build up a visual hierarchy of item categories. That&#39;s what we did, and you can do it too. I believe in you. Yes, you, Carl.
	/// (I hope someone named Carl reads this someday)
	@JsonKey(name:'groupedCategoryHashes')
	List<int> groupedCategoryHashes;

	/// All item category hashes of &quot;parent&quot; categories: categories that contain this as a child through the hierarchy of groupedCategoryHashes. It&#39;s a bit redundant, but having this child-centric list speeds up some calculations.
	@JsonKey(name:'parentCategoryHashes')
	List<int> parentCategoryHashes;

	/// If true, this category is only used for grouping, and should not be evaluated with its own checks. Rather, the item only has this category if it has one of its child categories.
	@JsonKey(name:'groupCategoryOnly')
	bool groupCategoryOnly;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyItemCategoryDefinition();

	factory DestinyItemCategoryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemCategoryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemCategoryDefinitionToJson(this);
}
