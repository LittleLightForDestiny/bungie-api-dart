import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_season_pass_reference.dart';
import 'destiny_season_act_definition.dart';
import 'destiny_season_preview_definition.dart';

part 'destiny_season_definition.g.dart';

/// Defines a canonical &quot;Season&quot; of Destiny: a range of a few months where the game highlights certain challenges, provides new loot, has new Clan-related rewards and celebrates various seasonal events.
@JsonSerializable()
class DestinySeasonDefinition{	
	DestinySeasonDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'backgroundImagePath')
	String? backgroundImagePath;
	
	@JsonKey(name:'seasonNumber')
	int? seasonNumber;
	
	@JsonKey(name:'startDate')
	String? startDate;
	
	@JsonKey(name:'endDate')
	String? endDate;
	
	@JsonKey(name:'seasonPassHash')
	int? seasonPassHash;
	
	@JsonKey(name:'seasonPassList')
	List<DestinySeasonPassReference>? seasonPassList;
	
	@JsonKey(name:'seasonPassProgressionHash')
	int? seasonPassProgressionHash;
	
	@JsonKey(name:'artifactItemHash')
	int? artifactItemHash;
	
	@JsonKey(name:'sealPresentationNodeHash')
	int? sealPresentationNodeHash;
	
	/// A list of Acts for the Episode
	@JsonKey(name:'acts')
	List<DestinySeasonActDefinition>? acts;
	
	@JsonKey(name:'seasonalChallengesPresentationNodeHash')
	int? seasonalChallengesPresentationNodeHash;
	
	/// Optional - Defines the promotional text, images, and links to preview this season.
	@JsonKey(name:'preview')
	DestinySeasonPreviewDefinition? preview;
	
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

	factory DestinySeasonDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonDefinitionToJson(this);

	static Future<DestinySeasonDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonDefinition>((json)=>DestinySeasonDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}