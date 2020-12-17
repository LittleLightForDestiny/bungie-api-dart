import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_socket_entry_plug_item_randomized_definition.g.dart';

@JsonSerializable()
class DestinyItemSocketEntryPlugItemRandomizedDefinition{
	
	DestinyItemSocketEntryPlugItemRandomizedDefinition();

	factory DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemSocketEntryPlugItemRandomizedDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Indicates if the plug can be rolled on the current version of the item. For example, older versions of weapons may have plug rolls that are no longer possible on the current versions.
	@JsonKey(name:'currentlyCanRoll')
	bool currentlyCanRoll;
	/// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryPlugItemRandomizedDefinitionToJson(this);
}