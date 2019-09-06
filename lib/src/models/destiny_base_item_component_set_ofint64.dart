import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_base_item_component_set_ofint64.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint64 {

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives;
	DestinyBaseItemComponentSetOfint64();

	factory DestinyBaseItemComponentSetOfint64.fromJson(Map<String, dynamic> json) => _$DestinyBaseItemComponentSetOfint64FromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint64ToJson(this);
}
