import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'dictionary_component_response_ofint32_and_destiny_item_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_instance_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_render_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_stats_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_sockets_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_reusable_plugs_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_plug_objectives_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_talent_grid_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_perks_component.dart';

part 'destiny_vendor_item_component_set_ofint32.g.dart';

@JsonSerializable()
class DestinyVendorItemComponentSetOfint32{	
	DestinyVendorItemComponentSetOfint32();

	
	@JsonKey(name:'itemComponents')
	DictionaryComponentResponseOfint32AndDestinyItemComponent? itemComponents;
	
	@JsonKey(name:'instances')
	DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent? instances;
	
	@JsonKey(name:'renderData')
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent? renderData;
	
	@JsonKey(name:'stats')
	DictionaryComponentResponseOfint32AndDestinyItemStatsComponent? stats;
	
	@JsonKey(name:'sockets')
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent? sockets;
	
	@JsonKey(name:'reusablePlugs')
	DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent? reusablePlugs;
	
	@JsonKey(name:'plugObjectives')
	DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent? plugObjectives;
	
	@JsonKey(name:'talentGrids')
	DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent? talentGrids;
	
	@JsonKey(name:'plugStates')
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent? plugStates;
	
	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent? objectives;
	
	@JsonKey(name:'perks')
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent? perks;

	factory DestinyVendorItemComponentSetOfint32.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorItemComponentSetOfint32FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorItemComponentSetOfint32ToJson(this);

	static Future<DestinyVendorItemComponentSetOfint32> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorItemComponentSetOfint32>((json)=>DestinyVendorItemComponentSetOfint32.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}