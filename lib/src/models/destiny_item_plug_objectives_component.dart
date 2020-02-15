import 'package:json_annotation/json_annotation.dart';

import 'destiny_objective_progress.dart';

part 'destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DestinyItemPlugObjectivesComponent{
	
	DestinyItemPlugObjectivesComponent();

	factory DestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemPlugObjectivesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// This set of data is keyed by the Item Hash (DestinyInventoryItemDefinition) of the plug whose objectives are being returned, with the value being the list of those objectives.
	///  What if two plugs with the same hash are returned for an item, you ask?
	///  Good question! They share the same item-scoped state, and as such would have identical objective state as a result. How's that for convenient.
	///  Sometimes, Plugs may have objectives: generally, these are used for flavor and display purposes. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data.
	@JsonKey(name:'objectivesPerPlug')
	Map<String, List<DestinyObjectiveProgress>> objectivesPerPlug;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemPlugObjectivesComponentToJson(this);
}