import 'destiny_item_instance_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_instance_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemInstanceComponent {

	/// If an item is &quot;instanced&quot;, this will contain information about the item&#39;s instance that doesn&#39;t fit easily into other components. One might say this is the &quot;essential&quot; instance data for the item.
	/// Items are instanced if they require information or state that can vary. For instance, weapons are Instanced: they are given a unique identifier, uniquely generated stats, and can have their properties altered. Non-instanced items have none of these things: for instance, Glimmer has no unique properties aside from how much of it you own.
	/// You can tell from an item&#39;s definition whether it will be instanced or not by looking at the DestinyInventoryItemDefinition&#39;s definition.inventory.isInstanceItem property.
	@JsonKey(name:'data')
	DestinyItemInstanceComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemInstanceComponent();

	factory SingleComponentResponseOfDestinyItemInstanceComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemInstanceComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemInstanceComponentToJson(this);
}
