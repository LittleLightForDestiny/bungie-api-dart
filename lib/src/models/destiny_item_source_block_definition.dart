import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_source_definition.dart';
import '../enums/bungie_membership_type.dart';
import 'destiny_item_vendor_source_reference.dart';

part 'destiny_item_source_block_definition.g.dart';

/// Data about an item&#39;s &quot;sources&quot;: ways that the item can be obtained.
@JsonSerializable()
class DestinyItemSourceBlockDefinition{
	
	DestinyItemSourceBlockDefinition();

	factory DestinyItemSourceBlockDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemSourceBlockDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition).
	@JsonKey(name:'sourceHashes')
	List<int> sourceHashes;
	/// A collection of details about the stats that were computed for the ways we found that the item could be spawned.
	@JsonKey(name:'sources')
	List<DestinyItemSourceDefinition> sources;
	/// If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform.
	@JsonKey(name:'exclusive',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType exclusive;
	/// A denormalized reference back to vendors that potentially sell this item.
	@JsonKey(name:'vendorSources')
	List<DestinyItemVendorSourceReference> vendorSources;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemSourceBlockDefinitionToJson(this);
}