import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_requirement_label.g.dart';

@JsonSerializable()
class DestinyActivityRequirementLabel{	
	DestinyActivityRequirementLabel();

	
	@JsonKey(name:'displayString')
	String? displayString;

	factory DestinyActivityRequirementLabel.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityRequirementLabelFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityRequirementLabelToJson(this);

	static Future<DestinyActivityRequirementLabel> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityRequirementLabel>((json)=>DestinyActivityRequirementLabel.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}