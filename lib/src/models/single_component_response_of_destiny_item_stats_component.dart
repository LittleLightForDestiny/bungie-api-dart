import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_stats_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_stats_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemStatsComponent{	
	SingleComponentResponseOfDestinyItemStatsComponent();

	
	/// If you want the stats on an item's instanced data, get this component.
	/// These are stats like Attack, Defense etc... and *not* historical stats.
	/// Note that some stats have additional computation in-game at runtime - for instance, Magazine Size - and thus these stats might not be 100% accurate compared to what you see in-game for some stats. I know, it sucks. I hate it too.
	@JsonKey(name:'data')
	DestinyItemStatsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemStatsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemStatsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemStatsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemStatsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemStatsComponent>((json)=>SingleComponentResponseOfDestinyItemStatsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}