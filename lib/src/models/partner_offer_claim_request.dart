import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'partner_offer_claim_request.g.dart';

@JsonSerializable()
class PartnerOfferClaimRequest{	
	PartnerOfferClaimRequest();

	
	@JsonKey(name:'PartnerOfferId')
	String? partnerOfferId;
	
	@JsonKey(name:'BungieNetMembershipId')
	String? bungieNetMembershipId;
	
	@JsonKey(name:'TransactionId')
	String? transactionId;

	factory PartnerOfferClaimRequest.fromJson(Map<String, dynamic> json) {
		return _$PartnerOfferClaimRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PartnerOfferClaimRequestToJson(this);

	static Future<PartnerOfferClaimRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PartnerOfferClaimRequest>((json)=>PartnerOfferClaimRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}