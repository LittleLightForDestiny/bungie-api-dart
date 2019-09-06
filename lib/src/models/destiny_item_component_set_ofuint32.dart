import 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_component_set_ofuint32.g.dart';

@JsonSerializable()
class DestinyItemComponentSetOfuint32 {

	@JsonKey(name:'instances')
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent instances;

	@JsonKey(name:'perks')
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent perks;

	@JsonKey(name:'renderData')
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent renderData;

	@JsonKey(name:'stats')
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent stats;

	@JsonKey(name:'sockets')
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent sockets;

	@JsonKey(name:'talentGrids')
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent talentGrids;

	@JsonKey(name:'plugStates')
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfuint32();

	factory DestinyItemComponentSetOfuint32.fromJson(Map<String, dynamic> json) => _$DestinyItemComponentSetOfuint32FromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemComponentSetOfuint32ToJson(this);
}
