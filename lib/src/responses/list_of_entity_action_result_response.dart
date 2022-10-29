import '../models/entity_action_result.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'list_of_entity_action_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfEntityActionResultResponse extends BungieNetResponse<List<EntityActionResult>> {
	ListOfEntityActionResultResponse({
		List<EntityActionResult>? response,
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

	factory ListOfEntityActionResultResponse.fromJson(Map<String, dynamic> json) => _$ListOfEntityActionResultResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfEntityActionResultResponseToJson(this);

	static Future<ListOfEntityActionResultResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ListOfEntityActionResultResponse>((json)=>ListOfEntityActionResultResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}