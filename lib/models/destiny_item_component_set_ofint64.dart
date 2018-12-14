import 'dictionary_component_response_ofint64_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_perks_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';
class DestinyItemComponentSetOfint64{
	DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent instances;
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent perks;
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent renderData;
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent stats;
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent sockets;
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent talentGrids;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent plugStates;
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyItemComponentSetOfint64(
		this.instances,
		this.perks,
		this.renderData,
		this.stats,
		this.sockets,
		this.talentGrids,
		this.plugStates,
		this.objectives,
	);

	static DestinyItemComponentSetOfint64 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemComponentSetOfint64(
				data['instances'] != null ? DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromMap(data['instances']) : null,
				data['perks'] != null ? DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromMap(data['perks']) : null,
				data['renderData'] != null ? DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromMap(data['renderData']) : null,
				data['stats'] != null ? DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromMap(data['stats']) : null,
				data['sockets'] != null ? DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromMap(data['sockets']) : null,
				data['talentGrids'] != null ? DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromMap(data['talentGrids']) : null,
				data['plugStates'] != null ? DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromMap(data['plugStates']) : null,
				data['objectives'] != null ? DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromMap(data['objectives']) : null,
		);
	}

	static List<DestinyItemComponentSetOfint64> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemComponentSetOfint64> list = new List();
    data.forEach((item) {
      list.add(DestinyItemComponentSetOfint64.fromMap(item));
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