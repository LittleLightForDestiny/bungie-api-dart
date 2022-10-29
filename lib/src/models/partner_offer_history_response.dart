import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'partner_offer_history_response.g.dart';

@JsonSerializable()
class PartnerOfferHistoryResponse{	
	PartnerOfferHistoryResponse();

	
	@JsonKey(name:'PartnerOfferKey')
	String? partnerOfferKey;
	
	@JsonKey(name:'MembershipId')
	String? membershipId;
	
	@JsonKey(name:'MembershipType')
	int? membershipType;
	
	@JsonKey(name:'LocalizedName')
	String? localizedName;
	
	@JsonKey(name:'LocalizedDescription')
	String? localizedDescription;
	
	@JsonKey(name:'IsConsumable')
	bool? isConsumable;
	
	@JsonKey(name:'QuantityApplied')
	int? quantityApplied;
	
	@JsonKey(name:'ApplyDate')
	String? applyDate;

	factory PartnerOfferHistoryResponse.fromJson(Map<String, dynamic> json) {
		return _$PartnerOfferHistoryResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PartnerOfferHistoryResponseToJson(this);

	static Future<PartnerOfferHistoryResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PartnerOfferHistoryResponse>((json)=>PartnerOfferHistoryResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}