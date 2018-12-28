import 'destiny_display_properties_definition.dart';

/** Display Categories are different from "categories" in that these are specifically for visual grouping and display of categories in Vendor UI. The "categories" structure is for validation of the contained items, and can be categorized entirely separately from "Display Categories", there need be and often will be no meaningful relationship between the two. */
class DestinyDisplayCategoryDefinition{
	
	/** A string identifier for the display category. */
	String identifier;
	
	/**  */
	int displayCategoryHash;
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** If true, this category should be displayed in the "Banner" section of the vendor's UI. */
	bool displayInBanner;
	
	/** If it exists, this is the hash identifier of a DestinyProgressionDefinition that represents the progression to show on this display category.
Specific categories can now have thier own distinct progression, apparently. So that's cool. */
	int progressionHash;
	
	/** If this category sorts items in a nonstandard way, this will be the way we sort. */
	int sortOrder;
	
	/** An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category. */
	int displayStyleHash;
	
	/** An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category. */
	String displayStyleIdentifier;
	DestinyDisplayCategoryDefinition(
		this.identifier,
		this.displayCategoryHash,
		this.displayProperties,
		this.displayInBanner,
		this.progressionHash,
		this.sortOrder,
		this.displayStyleHash,
		this.displayStyleIdentifier,
	);

	static DestinyDisplayCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDisplayCategoryDefinition(
				data['identifier'],
				data['displayCategoryHash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['displayInBanner'],
				data['progressionHash'],
				data['sortOrder'],
				data['displayStyleHash'],
				data['displayStyleIdentifier'],
		);
	}

	static List<DestinyDisplayCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDisplayCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDisplayCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = this.identifier;
			data['displayCategoryHash'] = this.displayCategoryHash;
			data['displayProperties'] = this.displayProperties.toMap();
			data['displayInBanner'] = this.displayInBanner;
			data['progressionHash'] = this.progressionHash;
			data['sortOrder'] = this.sortOrder;
			data['displayStyleHash'] = this.displayStyleHash;
			data['displayStyleIdentifier'] = this.displayStyleIdentifier;
		return data;
	}
}