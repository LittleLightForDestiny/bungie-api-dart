
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_socket_entry_plug_item_randomized_definition.g.dart';

@JsonSerializable()
class DestinyItemSocketEntryPlugItemRandomizedDefinition {

	/// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;
	DestinyItemSocketEntryPlugItemRandomizedDefinition();

	factory DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSocketEntryPlugItemRandomizedDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryPlugItemRandomizedDefinitionToJson(this);
}
