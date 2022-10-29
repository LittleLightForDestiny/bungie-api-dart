import '../models/bungie_reward_display.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'dictionary_ofstring_and_bungie_reward_display_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfstringAndBungieRewardDisplayResponse extends BungieNetResponse<Map<String, BungieRewardDisplay>> {
	DictionaryOfstringAndBungieRewardDisplayResponse({
		Map<String, BungieRewardDisplay>? response,
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

	factory DictionaryOfstringAndBungieRewardDisplayResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfstringAndBungieRewardDisplayResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DictionaryOfstringAndBungieRewardDisplayResponseToJson(this);

	static Future<DictionaryOfstringAndBungieRewardDisplayResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryOfstringAndBungieRewardDisplayResponse>((json)=>DictionaryOfstringAndBungieRewardDisplayResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}