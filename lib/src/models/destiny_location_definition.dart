import 'destiny_location_release_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_location_definition.g.dart';

/// A &quot;Location&quot; is a sort of shortcut for referring to a specific combination of Activity, Destination, Place, and even Bubble or NavPoint within a space.
/// Most of this data isn&#39;t intrinsically useful to us, but Objectives refer to locations, and through that we can at least infer the Activity, Destination, and Place being referred to by the Objective.
@JsonSerializable()
class DestinyLocationDefinition {

	/// If the location has a Vendor on it, this is the hash identifier for that Vendor. Look them up with DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// A Location may refer to different specific spots in the world based on the world&#39;s current state. This is a list of those potential spots, and the data we can use at runtime to determine which one of the spots is the currently valid one.
	@JsonKey(name:'locationReleases')
	List<DestinyLocationReleaseDefinition> locationReleases;

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
	DestinyLocationDefinition();

	factory DestinyLocationDefinition.fromJson(Map<String, dynamic> json) => _$DestinyLocationDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLocationDefinitionToJson(this);
}
