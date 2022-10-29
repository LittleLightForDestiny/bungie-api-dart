import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_plug.dart';

part 'destiny_plug_sets_component.g.dart';

/// Sockets may refer to a &quot;Plug Set&quot;: a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
/// This is the set of those plugs that we came across in the users&#39; inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused)
@JsonSerializable()
class DestinyPlugSetsComponent{	
	DestinyPlugSetsComponent();

	
	/// The shared list of plugs for each relevant PlugSet, keyed by the hash identifier of the PlugSet (DestinyPlugSetDefinition).
	@JsonKey(name:'plugs')
	Map<String, List<DestinyItemPlug>>? plugs;

	factory DestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyPlugSetsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPlugSetsComponentToJson(this);

	static Future<DestinyPlugSetsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPlugSetsComponent>((json)=>DestinyPlugSetsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}