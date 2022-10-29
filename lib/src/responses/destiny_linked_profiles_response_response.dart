import '../models/destiny_linked_profiles_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_linked_profiles_response_response.g.dart';

/// I know what you seek. You seek linked accounts. Found them, you have.
/// This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose
@JsonSerializable()
class DestinyLinkedProfilesResponseResponse extends BungieNetResponse<DestinyLinkedProfilesResponse> {
	DestinyLinkedProfilesResponseResponse({
		DestinyLinkedProfilesResponse? response,
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

	factory DestinyLinkedProfilesResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyLinkedProfilesResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyLinkedProfilesResponseResponseToJson(this);

	static Future<DestinyLinkedProfilesResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLinkedProfilesResponseResponse>((json)=>DestinyLinkedProfilesResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}