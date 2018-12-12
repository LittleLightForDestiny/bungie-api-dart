import 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
class DestinyItemComponentSetOfuint32{
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent instances;
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent perks;
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent renderData;
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent stats;
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent sockets;
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent talentGrids;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfuint32(
		DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent this.instances,
		DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent this.perks,
		DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent this.renderData,
		DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent this.stats,
		DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent this.sockets,
		DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent this.talentGrids,
		DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent this.plugStates,
		DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent this.objectives,
	);

	static DestinyItemComponentSetOfuint32 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfuint32(
				DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromMap(data['instances']),
				DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromMap(data['perks']),
				DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromMap(data['renderData']),
				DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromMap(data['stats']),
				DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromMap(data['sockets']),
				DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromMap(data['talentGrids']),
				DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(data['plugStates']),
				DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromMap(data['objectives']),
		);
	}

	static List<DestinyItemComponentSetOfuint32> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfuint32> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfuint32.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['instances'] = this.instances.toMap();
			data['perks'] = this.perks.toMap();
			data['renderData'] = this.renderData.toMap();
			data['stats'] = this.stats.toMap();
			data['sockets'] = this.sockets.toMap();
			data['talentGrids'] = this.talentGrids.toMap();
			data['plugStates'] = this.plugStates.toMap();
			data['objectives'] = this.objectives.toMap();
		return data;
	}
}