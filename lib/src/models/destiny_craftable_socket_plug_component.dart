import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_craftable_socket_plug_component.g.dart';

@JsonSerializable()
class DestinyCraftableSocketPlugComponent{	
	DestinyCraftableSocketPlugComponent();

	
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;
	
	/// Index into the unlock requirements to display failure descriptions
	@JsonKey(name:'failedRequirementIndexes')
	List<int>? failedRequirementIndexes;

	factory DestinyCraftableSocketPlugComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftableSocketPlugComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftableSocketPlugComponentToJson(this);

	static Future<DestinyCraftableSocketPlugComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCraftableSocketPlugComponent>((json)=>DestinyCraftableSocketPlugComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}