import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'awa_initialize_response.g.dart';

@JsonSerializable()
class AwaInitializeResponse{	
	AwaInitializeResponse();

	
	/// ID used to get the token. Present this ID to the user as it will identify this specific request on their device.
	@JsonKey(name:'correlationId')
	String? correlationId;
	
	/// True if the PUSH message will only be sent to the device that made this request.
	@JsonKey(name:'sentToSelf')
	bool? sentToSelf;

	factory AwaInitializeResponse.fromJson(Map<String, dynamic> json) {
		return _$AwaInitializeResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$AwaInitializeResponseToJson(this);

	static Future<AwaInitializeResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, AwaInitializeResponse>((json)=>AwaInitializeResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}