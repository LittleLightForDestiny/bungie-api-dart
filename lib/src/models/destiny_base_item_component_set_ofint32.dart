import 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_base_item_component_set_ofint32.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint32 {

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfint32();

	factory DestinyBaseItemComponentSetOfint32.fromJson(Map<String, dynamic> json) => _$DestinyBaseItemComponentSetOfint32FromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint32ToJson(this);
}
