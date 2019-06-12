
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_group_definition.g.dart';

/** BNet attempts to group vendors into similar collections. These groups aren't technically game canonical, but they are helpful for filtering vendors or showing them organized into a clean view on a webpage or app.
These definitions represent the groups we've built. Unlike in Destiny 1, a Vendors' group may change dynamically as the game state changes: thus, you will want to check DestinyVendorComponent responses to find a vendor's currently active Group (if you care).
Using this will let you group your vendors in your UI in a similar manner to how we will do grouping in the Companion. */
@JsonSerializable()
class DestinyVendorGroupDefinition{
	
	/** The recommended order in which to render the groups, Ascending order. */
	@JsonKey(name:'order')
	int order;
	
	/** For now, a group just has a name. */
	@JsonKey(name:'categoryName')
	String categoryName;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	@JsonKey(name:'hash')
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	@JsonKey(name:'index')
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyVendorGroupDefinition();

	factory DestinyVendorGroupDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorGroupDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorGroupDefinitionToJson(this);
}