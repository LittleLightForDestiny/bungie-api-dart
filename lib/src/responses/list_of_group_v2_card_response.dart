import '../models/group_v2_card.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'list_of_group_v2_card_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGroupV2CardResponse extends BungieNetResponse<List<GroupV2Card>> {
	ListOfGroupV2CardResponse({
		List<GroupV2Card>? response,
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

	factory ListOfGroupV2CardResponse.fromJson(Map<String, dynamic> json) => _$ListOfGroupV2CardResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfGroupV2CardResponseToJson(this);

	static Future<ListOfGroupV2CardResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ListOfGroupV2CardResponse>((json)=>ListOfGroupV2CardResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}