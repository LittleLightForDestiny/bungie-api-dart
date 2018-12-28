import 'single_component_response_of_destiny_item_component.dart';
import 'single_component_response_of_destiny_item_instance_component.dart';
import 'single_component_response_of_destiny_item_objectives_component.dart';
import 'single_component_response_of_destiny_item_perks_component.dart';
import 'single_component_response_of_destiny_item_render_component.dart';
import 'single_component_response_of_destiny_item_stats_component.dart';
import 'single_component_response_of_destiny_item_talent_grid_component.dart';
import 'single_component_response_of_destiny_item_sockets_component.dart';

/** The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition. */
class DestinyItemResponse{
	
	/** If the item is on a character, this will return the ID of the character that is holding the item. */
	String characterId;
	
	/** Common data for the item relevant to its non-instanced properties.
COMPONENT TYPE: ItemCommonData */
	SingleComponentResponseOfDestinyItemComponent item;
	
	/** Basic instance data for the item.
COMPONENT TYPE: ItemInstances */
	SingleComponentResponseOfDestinyItemInstanceComponent instance;
	
	/** Information specifically about the item's objectives.
COMPONENT TYPE: ItemObjectives */
	SingleComponentResponseOfDestinyItemObjectivesComponent objectives;
	
	/** Information specifically about the perks currently active on the item.
COMPONENT TYPE: ItemPerks */
	SingleComponentResponseOfDestinyItemPerksComponent perks;
	
	/** Information about how to render the item in 3D.
COMPONENT TYPE: ItemRenderData */
	SingleComponentResponseOfDestinyItemRenderComponent renderData;
	
	/** Information about the computed stats of the item: power, defense, etc...
COMPONENT TYPE: ItemStats */
	SingleComponentResponseOfDestinyItemStatsComponent stats;
	
	/** Information about the talent grid attached to the item. Talent nodes can provide a variety of benefits and abilities, and in Destiny 2 are used almost exclusively for the character's "Builds".
COMPONENT TYPE: ItemTalentGrids */
	SingleComponentResponseOfDestinyItemTalentGridComponent talentGrid;
	
	/** Information about the sockets of the item: which are currently active, what potential sockets you could have and the stats/abilities/perks you can gain from them.
COMPONENT TYPE: ItemSockets */
	SingleComponentResponseOfDestinyItemSocketsComponent sockets;
	DestinyItemResponse(
		this.characterId,
		this.item,
		this.instance,
		this.objectives,
		this.perks,
		this.renderData,
		this.stats,
		this.talentGrid,
		this.sockets,
	);

	static DestinyItemResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemResponse(
				data['characterId'],
				data['item'] != null ? SingleComponentResponseOfDestinyItemComponent.fromMap(data['item']) : null,
				data['instance'] != null ? SingleComponentResponseOfDestinyItemInstanceComponent.fromMap(data['instance']) : null,
				data['objectives'] != null ? SingleComponentResponseOfDestinyItemObjectivesComponent.fromMap(data['objectives']) : null,
				data['perks'] != null ? SingleComponentResponseOfDestinyItemPerksComponent.fromMap(data['perks']) : null,
				data['renderData'] != null ? SingleComponentResponseOfDestinyItemRenderComponent.fromMap(data['renderData']) : null,
				data['stats'] != null ? SingleComponentResponseOfDestinyItemStatsComponent.fromMap(data['stats']) : null,
				data['talentGrid'] != null ? SingleComponentResponseOfDestinyItemTalentGridComponent.fromMap(data['talentGrid']) : null,
				data['sockets'] != null ? SingleComponentResponseOfDestinyItemSocketsComponent.fromMap(data['sockets']) : null,
		);
	}

	static List<DestinyItemResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['characterId'] = this.characterId;
			data['item'] = this.item;
			data['instance'] = this.instance;
			data['objectives'] = this.objectives;
			data['perks'] = this.perks;
			data['renderData'] = this.renderData;
			data['stats'] = this.stats;
			data['talentGrid'] = this.talentGrid;
			data['sockets'] = this.sockets;
		return data;
	}
}