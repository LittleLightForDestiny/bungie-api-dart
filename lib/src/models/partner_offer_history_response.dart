import 'package:json_annotation/json_annotation.dart';


part 'partner_offer_history_response.g.dart';

@JsonSerializable()
class PartnerOfferHistoryResponse{
	
	PartnerOfferHistoryResponse();

	factory PartnerOfferHistoryResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$PartnerOfferHistoryResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'PartnerOfferKey')
	String partnerOfferKey;
	@JsonKey(name:'MembershipId')
	String membershipId;
	@JsonKey(name:'MembershipType')
	int membershipType;
	@JsonKey(name:'LocalizedName')
	String localizedName;
	@JsonKey(name:'LocalizedDescription')
	String localizedDescription;
	@JsonKey(name:'IsConsumable')
	bool isConsumable;
	@JsonKey(name:'QuantityApplied')
	int quantityApplied;
	@JsonKey(name:'ApplyDate')
	String applyDate;

	
	
	Map<String, dynamic> toJson() => _$PartnerOfferHistoryResponseToJson(this);
}