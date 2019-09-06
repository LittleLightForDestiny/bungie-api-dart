
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_socket_entry_plug_item_definition.g.dart';

/// The definition of a known, reusable plug that can be applied to a socket.
@JsonSerializable()
class DestinyItemSocketEntryPlugItemDefinition {

	/// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;
	DestinyItemSocketEntryPlugItemDefinition();

	factory DestinyItemSocketEntryPlugItemDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSocketEntryPlugItemDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryPlugItemDefinitionToJson(this);
}
