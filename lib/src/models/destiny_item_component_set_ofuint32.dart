import 'package:json_annotation/json_annotation.dart';

import 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_reusable_plugs_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_objectives_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';

part 'destiny_item_component_set_ofuint32.g.dart';

@JsonSerializable()
class DestinyItemComponentSetOfuint32{	
	DestinyItemComponentSetOfuint32();

	factory DestinyItemComponentSetOfuint32.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemComponentSetOfuint32FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemComponentSetOfuint32ToJson(this);
	
	@JsonKey(name:'instances')
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent? instances;
	
	@JsonKey(name:'renderData')
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent? renderData;
	
	@JsonKey(name:'stats')
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent? stats;
	
	@JsonKey(name:'sockets')
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent? sockets;
	
	@JsonKey(name:'reusablePlugs')
	DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent? reusablePlugs;
	
	@JsonKey(name:'plugObjectives')
	DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent? plugObjectives;
	
	@JsonKey(name:'talentGrids')
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent? talentGrids;
	
	@JsonKey(name:'plugStates')
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent? plugStates;
	
	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent? objectives;
	
	@JsonKey(name:'perks')
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent? perks;
}