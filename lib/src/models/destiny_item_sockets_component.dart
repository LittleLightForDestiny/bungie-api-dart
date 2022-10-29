import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_socket_state.dart';

part 'destiny_item_sockets_component.g.dart';

/// Instanced items can have sockets, which are slots on the item where plugs can be inserted.
/// Sockets are a bit complex: be sure to examine the documentation on the DestinyInventoryItemDefinition&#39;s &quot;socket&quot; block and elsewhere on these objects for more details.
@JsonSerializable()
class DestinyItemSocketsComponent{	
	DestinyItemSocketsComponent();

	
	/// The list of all sockets on the item, and their status information.
	@JsonKey(name:'sockets')
	List<DestinyItemSocketState>? sockets;

	factory DestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketsComponentToJson(this);

	static Future<DestinyItemSocketsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSocketsComponent>((json)=>DestinyItemSocketsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}