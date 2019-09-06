
import 'package:json_annotation/json_annotation.dart';
part 'awa_user_response.g.dart';

@JsonSerializable()
class AwaUserResponse {

	/// Indication of the selection the user has made (Approving or rejecting the action)
	@JsonKey(name:'selection')
	int selection;

	/// Correlation ID of the request
	@JsonKey(name:'correlationId')
	String correlationId;

	/// Secret nonce received via the PUSH notification.
	@JsonKey(name:'nonce')
	List<int> nonce;
	AwaUserResponse();

	factory AwaUserResponse.fromJson(Map<String, dynamic> json) => _$AwaUserResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$AwaUserResponseToJson(this);
}
