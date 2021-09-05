import 'package:json_annotation/json_annotation.dart';


part 'partner_offer_claim_request.g.dart';

@JsonSerializable()
class PartnerOfferClaimRequest{
	
	PartnerOfferClaimRequest();

	factory PartnerOfferClaimRequest.fromJson(Map<String, dynamic> json) {
		return _$PartnerOfferClaimRequestFromJson(json);
	}

	@JsonKey(name:'PartnerOfferId')
	String? partnerOfferId;
	@JsonKey(name:'BungieNetMembershipId')
	String? bungieNetMembershipId;
	@JsonKey(name:'TransactionId')
	String? transactionId;

	
	
	Map<String, dynamic> toJson() => _$PartnerOfferClaimRequestToJson(this);
}