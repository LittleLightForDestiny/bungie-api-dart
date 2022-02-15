import '../models/destiny_milestone.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_milestone_response.g.dart';

/// Represents a runtime instance of a user's milestone status. Live Milestone data should be combined with DestinyMilestoneDefinition data to show the user a picture of what is available for them to do in the game, and their status in regards to said "things to do." Consider it a big, wonky to-do list, or Advisors 3.0 for those who remember the Destiny 1 API.
@JsonSerializable()
class DestinyMilestoneResponse extends BungieNetResponse<DestinyMilestone> {
	DestinyMilestoneResponse({
		DestinyMilestone? response,
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

	factory DestinyMilestoneResponse.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyMilestoneResponseToJson(this);
}