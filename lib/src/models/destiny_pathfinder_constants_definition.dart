import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_pathfinder_constants_definition.g.dart';

@JsonSerializable()
class DestinyPathfinderConstantsDefinition{	
	DestinyPathfinderConstantsDefinition();

	
	/// Pathfinder root node for The Pale Heart
	@JsonKey(name:'thePaleHeartPathfinderRootNodeHash')
	int? thePaleHeartPathfinderRootNodeHash;
	
	/// Root presentation nodes for all currently valid Pathfinder boards
	@JsonKey(name:'allPathfinderRootNodeHashes')
	List<int>? allPathfinderRootNodeHashes;
	
	/// The current shape of Pathfinder boards, where a Pathfinder board is stored as as flat list of Records. The key of this dictionary is the index at which a tier starts, and the value is the total number of objectives in the tier.
	@JsonKey(name:'pathfinderTreeTiers')
	Map<String, int>? pathfinderTreeTiers;
	
	/// The topology of the Pathfinder board. The key is the index of the Record in the Pathfinder board, and the value is a list of the indices of Records that are connected to the Key Record. Using this topology, clients can ascertain if a Record can be unlocked, by checking if the objective of any connected Record has been completed and/or claimed.
	@JsonKey(name:'pathfinderTopology')
	Map<String, List<int>>? pathfinderTopology;
	
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

	factory DestinyPathfinderConstantsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyPathfinderConstantsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPathfinderConstantsDefinitionToJson(this);

	static Future<DestinyPathfinderConstantsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPathfinderConstantsDefinition>((json)=>DestinyPathfinderConstantsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}