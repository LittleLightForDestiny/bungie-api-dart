import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_talent_exclusive_group.g.dart';

/// As of Destiny 2, nodes can exist as part of &quot;Exclusive Groups&quot;. These differ from exclusive sets in that, within the group, many nodes can be activated. But the act of activating any node in the group will cause &quot;opposing&quot; nodes (nodes in groups that are not allowed to be activated at the same time as this group) to deactivate.
@JsonSerializable()
class DestinyTalentExclusiveGroup{	
	DestinyTalentExclusiveGroup();

	
	/// The identifier for this exclusive group. Only guaranteed unique within the talent grid, not globally.
	@JsonKey(name:'groupHash')
	int? groupHash;
	
	/// If this group has an associated piece of lore to show next to it, this will be the identifier for that DestinyLoreDefinition.
	@JsonKey(name:'loreHash')
	int? loreHash;
	
	/// A quick reference of the talent nodes that are part of this group, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash)
	@JsonKey(name:'nodeHashes')
	List<int>? nodeHashes;
	
	/// A quick reference of Groups whose nodes will be deactivated if any node in this group is activated.
	@JsonKey(name:'opposingGroupHashes')
	List<int>? opposingGroupHashes;
	
	/// A quick reference of Nodes that will be deactivated if any node in this group is activated, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash)
	@JsonKey(name:'opposingNodeHashes')
	List<int>? opposingNodeHashes;

	factory DestinyTalentExclusiveGroup.fromJson(Map<String, dynamic> json) {
		return _$DestinyTalentExclusiveGroupFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyTalentExclusiveGroupToJson(this);

	static Future<DestinyTalentExclusiveGroup> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyTalentExclusiveGroup>((json)=>DestinyTalentExclusiveGroup.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}