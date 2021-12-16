import 'package:json_annotation/json_annotation.dart';

import 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.dart';

part 'destiny_base_item_component_set_ofint64.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint64{
	
	DestinyBaseItemComponentSetOfint64();

	factory DestinyBaseItemComponentSetOfint64.fromJson(Map<String, dynamic> json) {
		return _$DestinyBaseItemComponentSetOfint64FromJson(json);
	}

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent? objectives;

	
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint64ToJson(this);
}