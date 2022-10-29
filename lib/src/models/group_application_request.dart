import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'group_application_request.g.dart';

@JsonSerializable()
class GroupApplicationRequest{	
	GroupApplicationRequest();

	
	@JsonKey(name:'message')
	String? message;

	factory GroupApplicationRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupApplicationRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupApplicationRequestToJson(this);

	static Future<GroupApplicationRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupApplicationRequest>((json)=>GroupApplicationRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}