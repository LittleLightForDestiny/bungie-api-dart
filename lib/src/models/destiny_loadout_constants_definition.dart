import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_loadout_constants_definition.g.dart';

@JsonSerializable()
class DestinyLoadoutConstantsDefinition{	
	DestinyLoadoutConstantsDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// This is the same icon as the one in the display properties, offered here as well with a more descriptive name.
	@JsonKey(name:'whiteIconImagePath')
	String? whiteIconImagePath;
	
	/// This is a color-inverted version of the whiteIconImagePath.
	@JsonKey(name:'blackIconImagePath')
	String? blackIconImagePath;
	
	/// The maximum number of loadouts available to each character. The loadouts component API response can return fewer loadouts than this, as more loadouts are unlocked by reaching higher Guardian Ranks.
	@JsonKey(name:'loadoutCountPerCharacter')
	int? loadoutCountPerCharacter;
	
	/// A list of the socket category hashes to be filtered out of loadout item preview displays.
	@JsonKey(name:'loadoutPreviewFilterOutSocketCategoryHashes')
	List<int>? loadoutPreviewFilterOutSocketCategoryHashes;
	
	/// A list of the socket type hashes to be filtered out of loadout item preview displays.
	@JsonKey(name:'loadoutPreviewFilterOutSocketTypeHashes')
	List<int>? loadoutPreviewFilterOutSocketTypeHashes;
	
	/// A list of the loadout name hashes in index order, for convenience.
	@JsonKey(name:'loadoutNameHashes')
	List<int>? loadoutNameHashes;
	
	/// A list of the loadout icon hashes in index order, for convenience.
	@JsonKey(name:'loadoutIconHashes')
	List<int>? loadoutIconHashes;
	
	/// A list of the loadout color hashes in index order, for convenience.
	@JsonKey(name:'loadoutColorHashes')
	List<int>? loadoutColorHashes;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyLoadoutConstantsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutConstantsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutConstantsDefinitionToJson(this);

	static Future<DestinyLoadoutConstantsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutConstantsDefinition>((json)=>DestinyLoadoutConstantsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}