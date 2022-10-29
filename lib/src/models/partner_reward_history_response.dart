import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'partner_offer_sku_history_response.dart';
import 'twitch_drop_history_response.dart';

part 'partner_reward_history_response.g.dart';

@JsonSerializable()
class PartnerRewardHistoryResponse{	
	PartnerRewardHistoryResponse();

	
	@JsonKey(name:'PartnerOffers')
	List<PartnerOfferSkuHistoryResponse>? partnerOffers;
	
	@JsonKey(name:'TwitchDrops')
	List<TwitchDropHistoryResponse>? twitchDrops;

	factory PartnerRewardHistoryResponse.fromJson(Map<String, dynamic> json) {
		return _$PartnerRewardHistoryResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PartnerRewardHistoryResponseToJson(this);

	static Future<PartnerRewardHistoryResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PartnerRewardHistoryResponse>((json)=>PartnerRewardHistoryResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}