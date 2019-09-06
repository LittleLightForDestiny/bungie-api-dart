import 'dictionary_component_response_ofint64_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_component_set_ofint64.g.dart';

@JsonSerializable()
class DestinyItemComponentSetOfint64 {

	@JsonKey(name:'instances')
	DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent instances;

	@JsonKey(name:'perks')
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent perks;

	@JsonKey(name:'renderData')
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent renderData;

	@JsonKey(name:'stats')
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent stats;

	@JsonKey(name:'sockets')
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent sockets;

	@JsonKey(name:'talentGrids')
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent talentGrids;

	@JsonKey(name:'plugStates')
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfint64();

	factory DestinyItemComponentSetOfint64.fromJson(Map<String, dynamic> json) => _$DestinyItemComponentSetOfint64FromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemComponentSetOfint64ToJson(this);
}
