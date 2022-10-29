import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'reward_display_properties.g.dart';

@JsonSerializable()
class RewardDisplayProperties{	
	RewardDisplayProperties();

	
	@JsonKey(name:'Name')
	String? name;
	
	@JsonKey(name:'Description')
	String? description;
	
	@JsonKey(name:'ImagePath')
	String? imagePath;

	factory RewardDisplayProperties.fromJson(Map<String, dynamic> json) {
		return _$RewardDisplayPropertiesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$RewardDisplayPropertiesToJson(this);

	static Future<RewardDisplayProperties> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, RewardDisplayProperties>((json)=>RewardDisplayProperties.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}