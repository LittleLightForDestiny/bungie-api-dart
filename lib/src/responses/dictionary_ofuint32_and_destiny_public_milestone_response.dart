import '../models/destiny_public_milestone.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'dictionary_ofuint32_and_destiny_public_milestone_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfuint32AndDestinyPublicMilestoneResponse extends BungieNetResponse<Map<String, DestinyPublicMilestone>> {
	DictionaryOfuint32AndDestinyPublicMilestoneResponse({
		Map<String, DestinyPublicMilestone>? response,
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

	factory DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfuint32AndDestinyPublicMilestoneResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DictionaryOfuint32AndDestinyPublicMilestoneResponseToJson(this);

	static Future<DictionaryOfuint32AndDestinyPublicMilestoneResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryOfuint32AndDestinyPublicMilestoneResponse>((json)=>DictionaryOfuint32AndDestinyPublicMilestoneResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}