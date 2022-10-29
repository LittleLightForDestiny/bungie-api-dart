import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_string_variables_component.g.dart';

@JsonSerializable()
class DestinyStringVariablesComponent{	
	DestinyStringVariablesComponent();

	
	@JsonKey(name:'integerValuesByHash')
	Map<String, int>? integerValuesByHash;

	factory DestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyStringVariablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyStringVariablesComponentToJson(this);

	static Future<DestinyStringVariablesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyStringVariablesComponent>((json)=>DestinyStringVariablesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}