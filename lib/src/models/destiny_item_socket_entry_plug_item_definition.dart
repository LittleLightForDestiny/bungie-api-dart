import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_socket_entry_plug_item_definition.g.dart';

/// The definition of a known, reusable plug that can be applied to a socket.
@JsonSerializable()
class DestinyItemSocketEntryPlugItemDefinition{	
	DestinyItemSocketEntryPlugItemDefinition();

	
	/// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;

	factory DestinyItemSocketEntryPlugItemDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketEntryPlugItemDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryPlugItemDefinitionToJson(this);

	static Future<DestinyItemSocketEntryPlugItemDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSocketEntryPlugItemDefinition>((json)=>DestinyItemSocketEntryPlugItemDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}