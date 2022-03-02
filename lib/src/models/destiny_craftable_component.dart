import 'package:json_annotation/json_annotation.dart';

import 'destiny_craftable_socket_component.dart';

part 'destiny_craftable_component.g.dart';

@JsonSerializable()
class DestinyCraftableComponent{	
	DestinyCraftableComponent();

	factory DestinyCraftableComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftableComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftableComponentToJson(this);
	
	@JsonKey(name:'visible')
	bool? visible;
	
	/// If the requirements are not met for crafting this item, these will index into the list of failure strings.
	@JsonKey(name:'failedRequirementIndexes')
	List<int>? failedRequirementIndexes;
	
	/// Plug item state for the crafting sockets.
	@JsonKey(name:'sockets')
	List<DestinyCraftableSocketComponent>? sockets;
}