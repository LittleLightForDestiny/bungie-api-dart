import 'package:json_annotation/json_annotation.dart';


part 'awa_initialize_response.g.dart';

@JsonSerializable()
class AwaInitializeResponse{
	
	AwaInitializeResponse();

	factory AwaInitializeResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$AwaInitializeResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// ID used to get the token. Present this ID to the user as it will identify this specific request on their device.
	@JsonKey(name:'correlationId')
	String correlationId;
	/// True if the PUSH message will only be sent to the device that made this request.
	@JsonKey(name:'sentToSelf')
	bool sentToSelf;

	
	
	Map<String, dynamic> toJson() => _$AwaInitializeResponseToJson(this);
}