import '../models/application.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'ienumerable_of_application_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class IEnumerableOfApplicationResponse extends BungieNetResponse<List<Application>> {
	IEnumerableOfApplicationResponse({
		List<Application>? response,
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

	factory IEnumerableOfApplicationResponse.fromJson(Map<String, dynamic> json) => _$IEnumerableOfApplicationResponseFromJson(json);

	Map<String, dynamic> toJson() => _$IEnumerableOfApplicationResponseToJson(this);

	static Future<IEnumerableOfApplicationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, IEnumerableOfApplicationResponse>((json)=>IEnumerableOfApplicationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}