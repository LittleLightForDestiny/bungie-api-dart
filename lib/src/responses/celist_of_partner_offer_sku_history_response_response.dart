import '../models/partner_offer_sku_history_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'celist_of_partner_offer_sku_history_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEListOfPartnerOfferSkuHistoryResponseResponse extends BungieNetResponse<List<PartnerOfferSkuHistoryResponse>> {
	CEListOfPartnerOfferSkuHistoryResponseResponse({
		List<PartnerOfferSkuHistoryResponse>? response,
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

	factory CEListOfPartnerOfferSkuHistoryResponseResponse.fromJson(Map<String, dynamic> json) => _$CEListOfPartnerOfferSkuHistoryResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEListOfPartnerOfferSkuHistoryResponseResponseToJson(this);
}