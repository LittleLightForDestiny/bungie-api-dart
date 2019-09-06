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

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_response.g.dart';

/// The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data.
@JsonSerializable()
class DestinyCharacterResponse {

	/// The character-level non-equipped inventory items.
	/// COMPONENT TYPE: CharacterInventories
	@JsonKey(name:'inventory')
	SingleComponentResponseOfDestinyInventoryComponent inventory;

	/// Base information about the character in question.
	/// COMPONENT TYPE: Characters
	@JsonKey(name:'character')
	SingleComponentResponseOfDestinyCharacterComponent character;

	/// Character progression data, including Milestones.
	/// COMPONENT TYPE: CharacterProgressions
	@JsonKey(name:'progressions')
	SingleComponentResponseOfDestinyCharacterProgressionComponent progressions;

	/// Character rendering data - a minimal set of information about equipment and dyes used for rendering.
	/// COMPONENT TYPE: CharacterRenderData
	@JsonKey(name:'renderData')
	SingleComponentResponseOfDestinyCharacterRenderComponent renderData;

	/// Activity data - info about current activities available to the player.
	/// COMPONENT TYPE: CharacterActivities
	@JsonKey(name:'activities')
	SingleComponentResponseOfDestinyCharacterActivitiesComponent activities;

	/// Equipped items on the character.
	/// COMPONENT TYPE: CharacterEquipment
	@JsonKey(name:'equipment')
	SingleComponentResponseOfDestinyInventoryComponent equipment;

	/// Items available from Kiosks that are available to this specific character. 
	/// COMPONENT TYPE: Kiosks
	@JsonKey(name:'kiosks')
	SingleComponentResponseOfDestinyKiosksComponent kiosks;

	/// When sockets refer to reusable Plug Sets (see DestinyPlugSetDefinition for more info), this is the set of plugs and their states that are scoped to this character.
	/// This comes back with ItemSockets, as it is needed for a complete picture of the sockets on requested items.
	/// COMPONENT TYPE: ItemSockets
	@JsonKey(name:'plugSets')
	SingleComponentResponseOfDestinyPlugSetsComponent plugSets;

	/// COMPONENT TYPE: PresentationNodes
	@JsonKey(name:'presentationNodes')
	SingleComponentResponseOfDestinyPresentationNodesComponent presentationNodes;

	/// COMPONENT TYPE: Records
	@JsonKey(name:'records')
	SingleComponentResponseOfDestinyCharacterRecordsComponent records;

	/// COMPONENT TYPE: Collectibles
	@JsonKey(name:'collectibles')
	SingleComponentResponseOfDestinyCollectiblesComponent collectibles;

	/// The set of components belonging to the player&#39;s instanced items.
	/// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
	@JsonKey(name:'itemComponents')
	DestinyItemComponentSetOfint64 itemComponents;

	/// The set of components belonging to the player&#39;s UNinstanced items. Because apparently now those too can have information relevant to the character&#39;s state.
	/// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
	@JsonKey(name:'uninstancedItemComponents')
	DestinyBaseItemComponentSetOfuint32 uninstancedItemComponents;

	/// A &quot;lookup&quot; convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
	/// COMPONENT TYPE: CurrencyLookups
	@JsonKey(name:'currencyLookups')
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyCharacterResponse();

	factory DestinyCharacterResponse.fromJson(Map<String, dynamic> json) => _$DestinyCharacterResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterResponseToJson(this);
}
