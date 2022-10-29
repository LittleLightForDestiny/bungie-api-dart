import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.dart';

part 'destiny_base_item_component_set_ofuint32.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfuint32{	
	DestinyBaseItemComponentSetOfuint32();

	
	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent? objectives;
	
	@JsonKey(name:'perks')
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent? perks;

	factory DestinyBaseItemComponentSetOfuint32.fromJson(Map<String, dynamic> json) {
		return _$DestinyBaseItemComponentSetOfuint32FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfuint32ToJson(this);

	static Future<DestinyBaseItemComponentSetOfuint32> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyBaseItemComponentSetOfuint32>((json)=>DestinyBaseItemComponentSetOfuint32.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}