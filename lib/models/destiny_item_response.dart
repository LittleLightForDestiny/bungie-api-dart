import 'single_component_response_of_destiny_item_component.dart';
import 'single_component_response_of_destiny_item_instance_component.dart';
import 'single_component_response_of_destiny_item_objectives_component.dart';
import 'single_component_response_of_destiny_item_perks_component.dart';
import 'single_component_response_of_destiny_item_render_component.dart';
import 'single_component_response_of_destiny_item_stats_component.dart';
import 'single_component_response_of_destiny_item_talent_grid_component.dart';
import 'single_component_response_of_destiny_item_sockets_component.dart';
class DestinyItemResponse{
	String characterId;
	SingleComponentResponseOfDestinyItemComponent item;
	SingleComponentResponseOfDestinyItemInstanceComponent instance;
	SingleComponentResponseOfDestinyItemObjectivesComponent objectives;
	SingleComponentResponseOfDestinyItemPerksComponent perks;
	SingleComponentResponseOfDestinyItemRenderComponent renderData;
	SingleComponentResponseOfDestinyItemStatsComponent stats;
	SingleComponentResponseOfDestinyItemTalentGridComponent talentGrid;
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