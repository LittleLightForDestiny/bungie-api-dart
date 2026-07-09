import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_skull_component.g.dart';

@JsonSerializable()
class DestinyActivitySkullComponent{	
	DestinyActivitySkullComponent();

	
	@JsonKey(name:'hash')
	int? hash;
	
	@JsonKey(name:'skullIdentifierHash')
	int? skullIdentifierHash;
	
	@JsonKey(name:'isEnabled')
	bool? isEnabled;

	factory DestinyActivitySkullComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySkullComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySkullComponentToJson(this);

	static Future<DestinyActivitySkullComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySkullComponent>((json)=>DestinyActivitySkullComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}