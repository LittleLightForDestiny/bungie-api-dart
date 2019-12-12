import 'package:json_annotation/json_annotation.dart';

import 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.dart';

part 'destiny_base_item_component_set_ofuint32.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfuint32{
	
	DestinyBaseItemComponentSetOfuint32();

	factory DestinyBaseItemComponentSetOfuint32.fromJson(Map<String, dynamic> json) => _$DestinyBaseItemComponentSetOfuint32FromJson(json);

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives;

	
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfuint32ToJson(this);
}