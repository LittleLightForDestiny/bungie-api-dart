import 'package:json_annotation/json_annotation.dart';


part 'destiny_craftable_socket_plug_component.g.dart';

@JsonSerializable()
class DestinyCraftableSocketPlugComponent{	
	DestinyCraftableSocketPlugComponent();

	factory DestinyCraftableSocketPlugComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftableSocketPlugComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftableSocketPlugComponentToJson(this);
	
	@JsonKey(name:'plugItemHash')
	int? plugItemHash;
	
	/// Index into the unlock requirements to display failure descriptions
	@JsonKey(name:'failedRequirementIndexes')
	List<int>? failedRequirementIndexes;
}