import '../models/group_optional_conversation.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'celist_of_group_optional_conversation_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEListOfGroupOptionalConversationResponse extends BungieNetResponse<List<GroupOptionalConversation>> {
	CEListOfGroupOptionalConversationResponse({
		List<GroupOptionalConversation>? response,
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

	factory CEListOfGroupOptionalConversationResponse.fromJson(Map<String, dynamic> json) => _$CEListOfGroupOptionalConversationResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEListOfGroupOptionalConversationResponseToJson(this);

	static Future<CEListOfGroupOptionalConversationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CEListOfGroupOptionalConversationResponse>((json)=>CEListOfGroupOptionalConversationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}