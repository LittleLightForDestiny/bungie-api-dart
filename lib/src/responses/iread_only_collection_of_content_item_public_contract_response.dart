import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'iread_only_collection_of_content_item_public_contract_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class IReadOnlyCollectionOfContentItemPublicContractResponse extends BungieNetResponse<Map<String, String>> {
	IReadOnlyCollectionOfContentItemPublicContractResponse({
		Map<String, String>? response,
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

	factory IReadOnlyCollectionOfContentItemPublicContractResponse.fromJson(Map<String, dynamic> json) => _$IReadOnlyCollectionOfContentItemPublicContractResponseFromJson(json);

	Map<String, dynamic> toJson() => _$IReadOnlyCollectionOfContentItemPublicContractResponseToJson(this);

	static Future<IReadOnlyCollectionOfContentItemPublicContractResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, IReadOnlyCollectionOfContentItemPublicContractResponse>((json)=>IReadOnlyCollectionOfContentItemPublicContractResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}