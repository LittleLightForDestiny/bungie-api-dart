import 'single_component_response_of_destiny_item_component.dart';
import 'single_component_response_of_destiny_item_instance_component.dart';
import 'single_component_response_of_destiny_item_objectives_component.dart';
import 'single_component_response_of_destiny_item_perks_component.dart';
import 'single_component_response_of_destiny_item_render_component.dart';
import 'single_component_response_of_destiny_item_stats_component.dart';
import 'single_component_response_of_destiny_item_talent_grid_component.dart';
import 'single_component_response_of_destiny_item_sockets_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_response.g.dart';

/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn&#39;t have an &quot;itemInstanceId&quot;: for those, get your information from the DestinyInventoryDefinition.
@JsonSerializable()
class DestinyItemResponse {

	/// If the item is on a character, this will return the ID of the character that is holding the item.
	@JsonKey(name:'characterId')
	String characterId;

	/// Common data for the item relevant to its non-instanced properties.
	/// COMPONENT TYPE: ItemCommonData
	@JsonKey(name:'item')
	SingleComponentResponseOfDestinyItemComponent item;

	/// Basic instance data for the item.
	/// COMPONENT TYPE: ItemInstances
	@JsonKey(name:'instance')
	SingleComponentResponseOfDestinyItemInstanceComponent instance;

	/// Information specifically about the item&#39;s objectives.
	/// COMPONENT TYPE: ItemObjectives
	@JsonKey(name:'objectives')
	SingleComponentResponseOfDestinyItemObjectivesComponent objectives;

	/// Information specifically about the perks currently active on the item.
	/// COMPONENT TYPE: ItemPerks
	@JsonKey(name:'perks')
	SingleComponentResponseOfDestinyItemPerksComponent perks;

	/// Information about how to render the item in 3D.
	/// COMPONENT TYPE: ItemRenderData
	@JsonKey(name:'renderData')
	SingleComponentResponseOfDestinyItemRenderComponent renderData;

	/// Information about the computed stats of the item: power, defense, etc...
	/// COMPONENT TYPE: ItemStats
	@JsonKey(name:'stats')
	SingleComponentResponseOfDestinyItemStatsComponent stats;

	/// Information about the talent grid attached to the item. Talent nodes can provide a variety of benefits and abilities, and in Destiny 2 are used almost exclusively for the character&#39;s &quot;Builds&quot;.
	/// COMPONENT TYPE: ItemTalentGrids
	@JsonKey(name:'talentGrid')
	SingleComponentResponseOfDestinyItemTalentGridComponent talentGrid;

	/// Information about the sockets of the item: which are currently active, what potential sockets you could have and the stats&#x2F;abilities&#x2F;perks you can gain from them.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'sockets')
	SingleComponentResponseOfDestinyItemSocketsComponent sockets;
	DestinyItemResponse();

	factory DestinyItemResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemResponseToJson(this);
}
