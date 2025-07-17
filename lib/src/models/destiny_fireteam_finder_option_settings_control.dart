import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/fireteam_finder_option_control_type.dart';

part 'destiny_fireteam_finder_option_settings_control.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionSettingsControl{	
	DestinyFireteamFinderOptionSettingsControl();

	
	@JsonKey(name:'type',fromJson:decodeFireteamFinderOptionControlType,toJson:encodeFireteamFinderOptionControlType)
	FireteamFinderOptionControlType? type;
	
	@JsonKey(name:'minSelectedItems')
	int? minSelectedItems;
	
	@JsonKey(name:'maxSelectedItems')
	int? maxSelectedItems;

	factory DestinyFireteamFinderOptionSettingsControl.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionSettingsControlFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionSettingsControlToJson(this);

	static Future<DestinyFireteamFinderOptionSettingsControl> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionSettingsControl>((json)=>DestinyFireteamFinderOptionSettingsControl.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}