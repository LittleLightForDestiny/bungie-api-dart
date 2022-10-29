import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'partner_offer_history_response.dart';

part 'partner_offer_sku_history_response.g.dart';

@JsonSerializable()
class PartnerOfferSkuHistoryResponse{	
	PartnerOfferSkuHistoryResponse();

	
	@JsonKey(name:'SkuIdentifier')
	String? skuIdentifier;
	
	@JsonKey(name:'LocalizedName')
	String? localizedName;
	
	@JsonKey(name:'LocalizedDescription')
	String? localizedDescription;
	
	@JsonKey(name:'ClaimDate')
	String? claimDate;
	
	@JsonKey(name:'AllOffersApplied')
	bool? allOffersApplied;
	
	@JsonKey(name:'TransactionId')
	String? transactionId;
	
	@JsonKey(name:'SkuOffers')
	List<PartnerOfferHistoryResponse>? skuOffers;

	factory PartnerOfferSkuHistoryResponse.fromJson(Map<String, dynamic> json) {
		return _$PartnerOfferSkuHistoryResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PartnerOfferSkuHistoryResponseToJson(this);

	static Future<PartnerOfferSkuHistoryResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PartnerOfferSkuHistoryResponse>((json)=>PartnerOfferSkuHistoryResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}