import 'destiny_item_sockets_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemSocketsComponent {

	/// Instanced items can have sockets, which are slots on the item where plugs can be inserted.
	/// Sockets are a bit complex: be sure to examine the documentation on the DestinyInventoryItemDefinition&#39;s &quot;socket&quot; block and elsewhere on these objects for more details.
	@JsonKey(name:'data')
	DestinyItemSocketsComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemSocketsComponent();

	factory SingleComponentResponseOfDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemSocketsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemSocketsComponentToJson(this);
}
