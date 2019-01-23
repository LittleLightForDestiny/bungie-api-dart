import 'single_component_response_of_destiny_inventory_component.dart';
import 'single_component_response_of_destiny_character_component.dart';
import 'single_component_response_of_destiny_character_progression_component.dart';
import 'single_component_response_of_destiny_character_render_component.dart';
import 'single_component_response_of_destiny_character_activities_component.dart';
import 'single_component_response_of_destiny_kiosks_component.dart';
import 'single_component_response_of_destiny_plug_sets_component.dart';
import 'single_component_response_of_destiny_presentation_nodes_component.dart';
import 'single_component_response_of_destiny_character_records_component.dart';
import 'single_component_response_of_destiny_collectibles_component.dart';
import 'destiny_item_component_set_ofint64.dart';
import 'destiny_base_item_component_set_ofuint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';

/** The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data. */
class DestinyCharacterResponse{
	
	/** The character-level non-equipped inventory items.
COMPONENT TYPE: CharacterInventories */
	SingleComponentResponseOfDestinyInventoryComponent inventory;
	
	/** Base information about the character in question.
COMPONENT TYPE: Characters */
	SingleComponentResponseOfDestinyCharacterComponent character;
	
	/** Character progression data, including Milestones.
COMPONENT TYPE: CharacterProgressions */
	SingleComponentResponseOfDestinyCharacterProgressionComponent progressions;
	
	/** Character rendering data - a minimal set of information about equipment and dyes used for rendering.
COMPONENT TYPE: CharacterRenderData */
	SingleComponentResponseOfDestinyCharacterRenderComponent renderData;
	
	/** Activity data - info about current activities available to the player.
COMPONENT TYPE: CharacterActivities */
	SingleComponentResponseOfDestinyCharacterActivitiesComponent activities;
	
	/** Equipped items on the character.
COMPONENT TYPE: CharacterEquipment */
	SingleComponentResponseOfDestinyInventoryComponent equipment;
	
	/** Items available from Kiosks that are available to this specific character. 
COMPONENT TYPE: Kiosks */
	SingleComponentResponseOfDestinyKiosksComponent kiosks;
	
	/** When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are scoped to this character.
This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
COMPONENT TYPE: ItemSockets */
	SingleComponentResponseOfDestinyPlugSetsComponent plugSets;
	
	/** COMPONENT TYPE: PresentationNodes */
	SingleComponentResponseOfDestinyPresentationNodesComponent presentationNodes;
	
	/** COMPONENT TYPE: Records */
	SingleComponentResponseOfDestinyCharacterRecordsComponent records;
	
	/** COMPONENT TYPE: Collectibles */
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;
	
	/** The set of components belonging to the player's instanced items.
COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
	DestinyItemComponentSetOfint64 itemComponents;
	
	/** The set of components belonging to the player's UNinstanced items. Because apparently now those too can have information relevant to the character's state.
COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
	DestinyBaseItemComponentSetOfuint32 uninstancedItemComponents;
	
	/** A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
COMPONENT TYPE: CurrencyLookups */
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyCharacterResponse(
		this.inventory,
		this.character,
		this.progressions,
		this.renderData,
		this.activities,
		this.equipment,
		this.kiosks,
		this.plugSets,
		this.presentationNodes,
		this.records,
		this.collectibles,
		this.itemComponents,
		this.uninstancedItemComponents,
		this.currencyLookups,
	);

	static DestinyCharacterResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterResponse(
				data['inventory'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['inventory']) : null,
				data['character'] != null ? SingleComponentResponseOfDestinyCharacterComponent.fromMap(data['character']) : null,
				data['progressions'] != null ? SingleComponentResponseOfDestinyCharacterProgressionComponent.fromMap(data['progressions']) : null,
				data['renderData'] != null ? SingleComponentResponseOfDestinyCharacterRenderComponent.fromMap(data['renderData']) : null,
				data['activities'] != null ? SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromMap(data['activities']) : null,
				data['equipment'] != null ? SingleComponentResponseOfDestinyInventoryComponent.fromMap(data['equipment']) : null,
				data['kiosks'] != null ? SingleComponentResponseOfDestinyKiosksComponent.fromMap(data['kiosks']) : null,
				data['plugSets'] != null ? SingleComponentResponseOfDestinyPlugSetsComponent.fromMap(data['plugSets']) : null,
				data['presentationNodes'] != null ? SingleComponentResponseOfDestinyPresentationNodesComponent.fromMap(data['presentationNodes']) : null,
				data['records'] != null ? SingleComponentResponseOfDestinyCharacterRecordsComponent.fromMap(data['records']) : null,
				data['collectibles'] != null ? SingleComponentResponseOfDestinyCollectiblesComponent.fromMap(data['collectibles']) : null,
				data['itemComponents'] != null ? DestinyItemComponentSetOfint64.fromMap(data['itemComponents']) : null,
				data['uninstancedItemComponents'] != null ? DestinyBaseItemComponentSetOfuint32.fromMap(data['uninstancedItemComponents']) : null,
				data['currencyLookups'] != null ? SingleComponentResponseOfDestinyCurrenciesComponent.fromMap(data['currencyLookups']) : null,
		);
	}

	static List<DestinyCharacterResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['inventory'] = this.inventory != null? this.inventory.toMap() : null;
			data['character'] = this.character != null? this.character.toMap() : null;
			data['progressions'] = this.progressions != null? this.progressions.toMap() : null;
			data['renderData'] = this.renderData != null? this.renderData.toMap() : null;
			data['activities'] = this.activities != null? this.activities.toMap() : null;
			data['equipment'] = this.equipment != null? this.equipment.toMap() : null;
			data['kiosks'] = this.kiosks != null? this.kiosks.toMap() : null;
			data['plugSets'] = this.plugSets != null? this.plugSets.toMap() : null;
			data['presentationNodes'] = this.presentationNodes != null? this.presentationNodes.toMap() : null;
			data['records'] = this.records != null? this.records.toMap() : null;
			data['collectibles'] = this.collectibles != null? this.collectibles.toMap() : null;
			data['itemComponents'] = this.itemComponents != null? this.itemComponents.toMap() : null;
			data['uninstancedItemComponents'] = this.uninstancedItemComponents != null? this.uninstancedItemComponents.toMap() : null;
			data['currencyLookups'] = this.currencyLookups != null? this.currencyLookups.toMap() : null;
		return data;
	}
}