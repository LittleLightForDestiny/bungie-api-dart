import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_intrinsic_socket_entry_definition.g.dart';

/// Represents a socket that has a plug associated with it intrinsically. This is useful for situations where the weapon needs to have a visual plug&#x2F;Mod on it, but that plug&#x2F;Mod should never change.
@JsonSerializable()
class DestinyItemIntrinsicSocketEntryDefinition{	
	DestinyItemIntrinsicSocketEntryDefinition();

	
	/// Indicates the plug that is intrinsically inserted into this socket.
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;
	
	/// Indicates the type of this intrinsic socket.
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
	
	/// If true, then this socket is visible in the item's "default" state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you're looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see.
	@JsonKey(name:'defaultVisible')
	bool? defaultVisible;

	factory DestinyItemIntrinsicSocketEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemIntrinsicSocketEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemIntrinsicSocketEntryDefinitionToJson(this);

	static Future<DestinyItemIntrinsicSocketEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemIntrinsicSocketEntryDefinition>((json)=>DestinyItemIntrinsicSocketEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}