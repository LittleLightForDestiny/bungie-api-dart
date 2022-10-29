import '../models/search_result_of_group_member_application.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'search_result_of_group_member_application_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfGroupMemberApplicationResponse extends BungieNetResponse<SearchResultOfGroupMemberApplication> {
	SearchResultOfGroupMemberApplicationResponse({
		SearchResultOfGroupMemberApplication? response,
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

	factory SearchResultOfGroupMemberApplicationResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfGroupMemberApplicationResponseFromJson(json);

	Map<String, dynamic> toJson() => _$SearchResultOfGroupMemberApplicationResponseToJson(this);

	static Future<SearchResultOfGroupMemberApplicationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SearchResultOfGroupMemberApplicationResponse>((json)=>SearchResultOfGroupMemberApplicationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}