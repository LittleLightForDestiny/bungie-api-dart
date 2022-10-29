import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_craftable_socket_plug_component.dart';

part 'destiny_craftable_socket_component.g.dart';

@JsonSerializable()
class DestinyCraftableSocketComponent{	
	DestinyCraftableSocketComponent();

	
	@JsonKey(name:'plugSetHash')
	int? plugSetHash;
	
	/// Unlock state for plugs in the socket plug set definition
	@JsonKey(name:'plugs')
	List<DestinyCraftableSocketPlugComponent>? plugs;

	factory DestinyCraftableSocketComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftableSocketComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftableSocketComponentToJson(this);

	static Future<DestinyCraftableSocketComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCraftableSocketComponent>((json)=>DestinyCraftableSocketComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}