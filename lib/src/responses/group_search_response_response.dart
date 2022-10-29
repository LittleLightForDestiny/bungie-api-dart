import '../models/group_search_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'group_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupSearchResponseResponse extends BungieNetResponse<GroupSearchResponse> {
	GroupSearchResponseResponse({
		GroupSearchResponse? response,
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

	factory GroupSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupSearchResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$GroupSearchResponseResponseToJson(this);

	static Future<GroupSearchResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupSearchResponseResponse>((json)=>GroupSearchResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}