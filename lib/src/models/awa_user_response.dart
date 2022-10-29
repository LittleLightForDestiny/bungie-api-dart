import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/awa_user_selection.dart';

part 'awa_user_response.g.dart';

@JsonSerializable()
class AwaUserResponse{	
	AwaUserResponse();

	
	/// Indication of the selection the user has made (Approving or rejecting the action)
	@JsonKey(name:'selection',fromJson:decodeAwaUserSelection,toJson:encodeAwaUserSelection)
	AwaUserSelection? selection;
	
	/// Correlation ID of the request
	@JsonKey(name:'correlationId')
	String? correlationId;
	
	/// Secret nonce received via the PUSH notification.
	@JsonKey(name:'nonce')
	List<int>? nonce;

	factory AwaUserResponse.fromJson(Map<String, dynamic> json) {
		return _$AwaUserResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$AwaUserResponseToJson(this);

	static Future<AwaUserResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, AwaUserResponse>((json)=>AwaUserResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}