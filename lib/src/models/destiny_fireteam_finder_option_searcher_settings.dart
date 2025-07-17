import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_option_settings_control.dart';
import '../enums/fireteam_finder_option_search_filter_type.dart';

part 'destiny_fireteam_finder_option_searcher_settings.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionSearcherSettings{	
	DestinyFireteamFinderOptionSearcherSettings();

	
	@JsonKey(name:'control')
	DestinyFireteamFinderOptionSettingsControl? control;
	
	@JsonKey(name:'searchFilterType',fromJson:decodeFireteamFinderOptionSearchFilterType,toJson:encodeFireteamFinderOptionSearchFilterType)
	FireteamFinderOptionSearchFilterType? searchFilterType;

	factory DestinyFireteamFinderOptionSearcherSettings.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionSearcherSettingsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionSearcherSettingsToJson(this);

	static Future<DestinyFireteamFinderOptionSearcherSettings> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionSearcherSettings>((json)=>DestinyFireteamFinderOptionSearcherSettings.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}