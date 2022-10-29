import '../models/search_result_of_group_member.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'search_result_of_group_member_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class SearchResultOfGroupMemberResponse extends BungieNetResponse<SearchResultOfGroupMember> {
	SearchResultOfGroupMemberResponse({
		SearchResultOfGroupMember? response,
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

	factory SearchResultOfGroupMemberResponse.fromJson(Map<String, dynamic> json) => _$SearchResultOfGroupMemberResponseFromJson(json);

	Map<String, dynamic> toJson() => _$SearchResultOfGroupMemberResponseToJson(this);

	static Future<SearchResultOfGroupMemberResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SearchResultOfGroupMemberResponse>((json)=>SearchResultOfGroupMemberResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}