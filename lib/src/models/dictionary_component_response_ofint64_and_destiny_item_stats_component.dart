import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_stats_component.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_stats_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemStatsComponent{
	
	DictionaryComponentResponseOfint64AndDestinyItemStatsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemStatsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemStatsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemStatsComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemStatsComponentToJson(this);
}