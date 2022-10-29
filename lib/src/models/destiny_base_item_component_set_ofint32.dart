import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_item_perks_component.dart';

part 'destiny_base_item_component_set_ofint32.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint32{	
	DestinyBaseItemComponentSetOfint32();

	
	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent? objectives;
	
	@JsonKey(name:'perks')
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent? perks;

	factory DestinyBaseItemComponentSetOfint32.fromJson(Map<String, dynamic> json) {
		return _$DestinyBaseItemComponentSetOfint32FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint32ToJson(this);

	static Future<DestinyBaseItemComponentSetOfint32> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyBaseItemComponentSetOfint32>((json)=>DestinyBaseItemComponentSetOfint32.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}