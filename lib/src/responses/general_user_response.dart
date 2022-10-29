import '../models/general_user.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'general_user_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GeneralUserResponse extends BungieNetResponse<GeneralUser> {
	GeneralUserResponse({
		GeneralUser? response,
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

	factory GeneralUserResponse.fromJson(Map<String, dynamic> json) => _$GeneralUserResponseFromJson(json);

	Map<String, dynamic> toJson() => _$GeneralUserResponseToJson(this);

	static Future<GeneralUserResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GeneralUserResponse>((json)=>GeneralUserResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}