import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_record_definition.dart';
import 'collectible_definitions.dart';

part 'reward_availability_model.g.dart';

@JsonSerializable()
class RewardAvailabilityModel{	
	RewardAvailabilityModel();

	
	@JsonKey(name:'HasExistingCode')
	bool? hasExistingCode;
	
	@JsonKey(name:'RecordDefinitions')
	List<DestinyRecordDefinition>? recordDefinitions;
	
	@JsonKey(name:'CollectibleDefinitions')
	List<CollectibleDefinitions>? collectibleDefinitions;
	
	@JsonKey(name:'IsOffer')
	bool? isOffer;
	
	@JsonKey(name:'HasOffer')
	bool? hasOffer;
	
	@JsonKey(name:'OfferApplied')
	bool? offerApplied;
	
	@JsonKey(name:'DecryptedToken')
	String? decryptedToken;
	
	@JsonKey(name:'IsLoyaltyReward')
	bool? isLoyaltyReward;
	
	@JsonKey(name:'ShopifyEndDate')
	String? shopifyEndDate;
	
	@JsonKey(name:'GameEarnByDate')
	String? gameEarnByDate;
	
	@JsonKey(name:'RedemptionEndDate')
	String? redemptionEndDate;

	factory RewardAvailabilityModel.fromJson(Map<String, dynamic> json) {
		return _$RewardAvailabilityModelFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$RewardAvailabilityModelToJson(this);

	static Future<RewardAvailabilityModel> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, RewardAvailabilityModel>((json)=>RewardAvailabilityModel.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}