import 'package:json_annotation/json_annotation.dart';

import 'destiny_craftable_socket_plug_component.dart';

part 'destiny_craftable_socket_component.g.dart';

@JsonSerializable()
class DestinyCraftableSocketComponent{	
	DestinyCraftableSocketComponent();

	factory DestinyCraftableSocketComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftableSocketComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftableSocketComponentToJson(this);
	
	@JsonKey(name:'plugSetHash')
	int? plugSetHash;
	
	/// Unlock state for plugs in the socket plug set definition
	@JsonKey(name:'plugs')
	List<DestinyCraftableSocketPlugComponent>? plugs;
}