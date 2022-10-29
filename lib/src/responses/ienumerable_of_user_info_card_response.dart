import '../models/user_info_card.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'ienumerable_of_user_info_card_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class IEnumerableOfUserInfoCardResponse extends BungieNetResponse<List<UserInfoCard>> {
	IEnumerableOfUserInfoCardResponse({
		List<UserInfoCard>? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory IEnumerableOfUserInfoCardResponse.fromJson(Map<String, dynamic> json) => _$IEnumerableOfUserInfoCardResponseFromJson(json);

	Map<String, dynamic> toJson() => _$IEnumerableOfUserInfoCardResponseToJson(this);

	static Future<IEnumerableOfUserInfoCardResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, IEnumerableOfUserInfoCardResponse>((json)=>IEnumerableOfUserInfoCardResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}