import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';
import 'dictionary_component_response_ofint64_and_destiny_item_perks_component.dart';

part 'destiny_base_item_component_set_ofint64.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint64{	
	DestinyBaseItemComponentSetOfint64();

	
	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent? objectives;
	
	@JsonKey(name:'perks')
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent? perks;

	factory DestinyBaseItemComponentSetOfint64.fromJson(Map<String, dynamic> json) {
		return _$DestinyBaseItemComponentSetOfint64FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint64ToJson(this);

	static Future<DestinyBaseItemComponentSetOfint64> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyBaseItemComponentSetOfint64>((json)=>DestinyBaseItemComponentSetOfint64.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}