import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_socket_entry_definition.dart';
import 'destiny_item_intrinsic_socket_entry_definition.dart';
import 'destiny_item_socket_category_definition.dart';

part 'destiny_item_socket_block_definition.g.dart';

/// If defined, the item has at least one socket.
@JsonSerializable()
class DestinyItemSocketBlockDefinition{	
	DestinyItemSocketBlockDefinition();

	
	/// This was supposed to be a string that would give per-item details about sockets. In practice, it turns out that all this ever has is the localized word "details". ... that's lame, but perhaps it will become something cool in the future.
	@JsonKey(name:'detail')
	String? detail;
	
	/// Each non-intrinsic (or mutable) socket on an item is defined here. Check inside for more info.
	@JsonKey(name:'socketEntries')
	List<DestinyItemSocketEntryDefinition>? socketEntries;
	
	/// Each intrinsic (or immutable/permanent) socket on an item is defined here, along with the plug that is permanently affixed to the socket.
	@JsonKey(name:'intrinsicSockets')
	List<DestinyItemIntrinsicSocketEntryDefinition>? intrinsicSockets;
	
	/// A convenience property, that refers to the sockets in the "sockets" property, pre-grouped by category and ordered in the manner that they should be grouped in the UI. You could form this yourself with the existing data, but why would you want to? Enjoy life man.
	@JsonKey(name:'socketCategories')
	List<DestinyItemSocketCategoryDefinition>? socketCategories;

	factory DestinyItemSocketBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketBlockDefinitionToJson(this);

	static Future<DestinyItemSocketBlockDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSocketBlockDefinition>((json)=>DestinyItemSocketBlockDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}