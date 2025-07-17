import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_activity_set_definition.g.dart';

@JsonSerializable()
class DestinyFireteamFinderActivitySetDefinition{	
	DestinyFireteamFinderActivitySetDefinition();

	
	@JsonKey(name:'maximumPartySize')
	int? maximumPartySize;
	
	@JsonKey(name:'optionHashes')
	List<int>? optionHashes;
	
	@JsonKey(name:'labelHashes')
	List<int>? labelHashes;
	
	@JsonKey(name:'activityGraphHashes')
	List<int>? activityGraphHashes;
	
	@JsonKey(name:'activityHashes')
	List<int>? activityHashes;
	
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

	factory DestinyFireteamFinderActivitySetDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderActivitySetDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderActivitySetDefinitionToJson(this);

	static Future<DestinyFireteamFinderActivitySetDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderActivitySetDefinition>((json)=>DestinyFireteamFinderActivitySetDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}