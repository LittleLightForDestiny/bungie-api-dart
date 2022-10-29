import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'reward_availability_model.dart';

part 'user_reward_availability_model.g.dart';

@JsonSerializable()
class UserRewardAvailabilityModel{	
	UserRewardAvailabilityModel();

	
	@JsonKey(name:'AvailabilityModel')
	RewardAvailabilityModel? availabilityModel;
	
	@JsonKey(name:'IsAvailableForUser')
	bool? isAvailableForUser;
	
	@JsonKey(name:'IsUnlockedForUser')
	bool? isUnlockedForUser;

	factory UserRewardAvailabilityModel.fromJson(Map<String, dynamic> json) {
		return _$UserRewardAvailabilityModelFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserRewardAvailabilityModelToJson(this);

	static Future<UserRewardAvailabilityModel> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserRewardAvailabilityModel>((json)=>UserRewardAvailabilityModel.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}