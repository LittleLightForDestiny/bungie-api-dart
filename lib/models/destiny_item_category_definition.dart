import 'destiny_display_properties_definition.dart';

/** In an attempt to categorize items by type, usage, and other interesting properties, we created DestinyItemCategoryDefinition: information about types that is assembled using a set of heuristics that examine the properties of an item such as what inventory bucket it's in, its item type name, and whether it has or is missing certain blocks of data.
This heuristic is imperfect, however. If you find an item miscategorized, let us know on the Bungie API forums!
We then populate all of the categories that we think an item belongs to in its DestinyInventoryItemDefinition.itemCategoryHashes property. You can use that to provide your own custom item filtering, sorting, aggregating... go nuts on it! And let us know if you see more categories that you wish would be added! */
class DestinyItemCategoryDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** If True, this category should be visible in UI. Sometimes we make categories that we don't think are interesting externally. It's up to you if you want to skip on showing them. */
	bool visible;
	
	/** If True, this category has been deprecated: it may have no items left, or there may be only legacy items that remain in it which are no longer relevant to the game. */
	bool deprecated;
	
	/** A shortened version of the title. The reason why we have this is because the Armory in German had titles that were too long to display in our UI, so these were localized abbreviated versions of those categories. The property still exists today, even though the Armory doesn't exist for D2... yet. */
	String shortTitle;
	
	/** The janky regular expression we used against the item type to try and discern whether the item belongs to this category. */
	String itemTypeRegex;
	
	/** If the item is a plug, this is the identifier we expect to find associated with it if it is in this category. */
	String plugCategoryIdentifier;
	
	/** If the item type matches this janky regex, it does *not* belong to this category. */
	String itemTypeRegexNot;
	
	/** If the item belongs to this bucket, it does belong to this category. */
	String originBucketIdentifier;
	
	/** If an item belongs to this category, it will also receive this item type. This is now how DestinyItemType is populated for items: it used to be an even jankier process, but that's a story that requires more alcohol. */
	int grantDestinyItemType;
	
	/** If an item belongs to this category, it will also receive this subtype enum value.
I know what you're thinking - what if it belongs to multiple categories that provide sub-types?
The last one processed wins, as is the case with all of these "grant" enums. Now you can see one reason why we moved away from these enums... but they're so convenient when they work, aren't they? */
	int grantDestinySubType;
	
	/** If an item belongs to this category, it will also get this class restriction enum value.
See the other "grant"-prefixed properties on this definition for my color commentary. */
	int grantDestinyClass;
	
	/** If this category is a "parent" category of other categories, those children will have their hashes listed in rendering order here, and can be looked up using these hashes against DestinyItemCategoryDefinition.
In this way, you can build up a visual hierarchy of item categories. That's what we did, and you can do it too. I believe in you. Yes, you, Carl.
(I hope someone named Carl reads this someday) */
	List<int> groupedCategoryHashes;
	
	/** All item category hashes of "parent" categories: categories that contain this as a child through the hierarchy of groupedCategoryHashes. It's a bit redundant, but having this child-centric list speeds up some calculations. */
	List<int> parentCategoryHashes;
	
	/** If true, this category is only used for grouping, and should not be evaluated with its own checks. Rather, the item only has this category if it has one of its child categories. */
	bool groupCategoryOnly;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyItemCategoryDefinition(
		this.displayProperties,
		this.visible,
		this.deprecated,
		this.shortTitle,
		this.itemTypeRegex,
		this.plugCategoryIdentifier,
		this.itemTypeRegexNot,
		this.originBucketIdentifier,
		this.grantDestinyItemType,
		this.grantDestinySubType,
		this.grantDestinyClass,
		this.groupedCategoryHashes,
		this.parentCategoryHashes,
		this.groupCategoryOnly,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyItemCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemCategoryDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['visible'],
				data['deprecated'],
				data['shortTitle'],
				data['itemTypeRegex'],
				data['plugCategoryIdentifier'],
				data['itemTypeRegexNot'],
				data['originBucketIdentifier'],
				data['grantDestinyItemType'],
				data['grantDestinySubType'],
				data['grantDestinyClass'],
				data['groupedCategoryHashes'] != null ? data['groupedCategoryHashes']?.cast<int>() ?? null : null,
				data['parentCategoryHashes'] != null ? data['parentCategoryHashes']?.cast<int>() ?? null : null,
				data['groupCategoryOnly'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyItemCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['visible'] = this.visible;
			data['deprecated'] = this.deprecated;
			data['shortTitle'] = this.shortTitle;
			data['itemTypeRegex'] = this.itemTypeRegex;
			data['plugCategoryIdentifier'] = this.plugCategoryIdentifier;
			data['itemTypeRegexNot'] = this.itemTypeRegexNot;
			data['originBucketIdentifier'] = this.originBucketIdentifier;
			data['grantDestinyItemType'] = this.grantDestinyItemType;
			data['grantDestinySubType'] = this.grantDestinySubType;
			data['grantDestinyClass'] = this.grantDestinyClass;
			data['groupedCategoryHashes'] = this.groupedCategoryHashes;
			data['parentCategoryHashes'] = this.parentCategoryHashes;
			data['groupCategoryOnly'] = this.groupCategoryOnly;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}