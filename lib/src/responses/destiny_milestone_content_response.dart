import '../models/destiny_milestone_content.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_milestone_content_response.g.dart';

/// Represents localized, extended content related to Milestones. This is intentionally returned by a separate endpoint and not with Character-level Milestone data because we do not put localized data into standard Destiny responses, both for brevity of response and for caching purposes. If you really need this data, hit the Milestone Content endpoint.
@JsonSerializable()
class DestinyMilestoneContentResponse extends BungieNetResponse<DestinyMilestoneContent> {
	DestinyMilestoneContentResponse({
		DestinyMilestoneContent? response,
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

	factory DestinyMilestoneContentResponse.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneContentResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyMilestoneContentResponseToJson(this);

	static Future<DestinyMilestoneContentResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneContentResponse>((json)=>DestinyMilestoneContentResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}