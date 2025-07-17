import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_option_settings_control.dart';

part 'destiny_fireteam_finder_option_creator_settings.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionCreatorSettings{	
	DestinyFireteamFinderOptionCreatorSettings();

	
	@JsonKey(name:'control')
	DestinyFireteamFinderOptionSettingsControl? control;

	factory DestinyFireteamFinderOptionCreatorSettings.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionCreatorSettingsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionCreatorSettingsToJson(this);

	static Future<DestinyFireteamFinderOptionCreatorSettings> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionCreatorSettings>((json)=>DestinyFireteamFinderOptionCreatorSettings.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}