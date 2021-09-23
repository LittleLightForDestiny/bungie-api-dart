import 'package:json_annotation/json_annotation.dart';


part 'destiny_string_variables_component.g.dart';

@JsonSerializable()
class DestinyStringVariablesComponent{
	
	DestinyStringVariablesComponent();

	factory DestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyStringVariablesComponentFromJson(json);
	}

	@JsonKey(name:'integerValuesByHash')
	Map<String, int>? integerValuesByHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyStringVariablesComponentToJson(this);
}