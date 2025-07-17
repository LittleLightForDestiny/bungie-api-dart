import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_objective_progress.dart';

part 'destiny_item_plug_component.g.dart';

/// Plugs are non-instanced items that can provide Stat and Perk benefits when socketed into an instanced item. Items have Sockets, and Plugs are inserted into Sockets.
/// This component finds all items that are considered &quot;Plugs&quot; in your inventory, and return information about the plug aside from any specific Socket into which it could be inserted.
@JsonSerializable()
class DestinyItemPlugComponent{	
	DestinyItemPlugComponent();

	
	/// Sometimes, Plugs may have objectives: these are often used for flavor and display purposes, but they can be used for any arbitrary purpose (both fortunately and unfortunately). Recently (with Season 2) they were expanded in use to be used as the "gating" for whether the plug can be inserted at all. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data.
	@JsonKey(name:'plugObjectives')
	List<DestinyObjectiveProgress>? plugObjectives;
	
	/// The hash identifier of the DestinyInventoryItemDefinition that represents this plug.
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;
	
	/// If true, this plug has met all of its insertion requirements. Big if true.
	@JsonKey(name:'canInsert')
	bool? canInsert;
	
	/// If true, this plug will provide its benefits while inserted.
	@JsonKey(name:'enabled')
	bool? enabled;
	
	/// If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.
	/// This list will be empty if the plug can be inserted.
	@JsonKey(name:'insertFailIndexes')
	List<int>? insertFailIndexes;
	
	/// If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
	/// This list will be empty if the plug is enabled.
	@JsonKey(name:'enableFailIndexes')
	List<int>? enableFailIndexes;
	
	/// If available, this is the stack size to display for the socket plug item.
	@JsonKey(name:'stackSize')
	int? stackSize;
	
	/// If available, this is the maximum stack size to display for the socket plug item.
	@JsonKey(name:'maxStackSize')
	int? maxStackSize;

	factory DestinyItemPlugComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemPlugComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemPlugComponentToJson(this);

	static Future<DestinyItemPlugComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemPlugComponent>((json)=>DestinyItemPlugComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}