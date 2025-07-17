import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_progression_socket_plug_override.g.dart';

/// The information for how progression item definitions should override a given socket with custom plug data.
@JsonSerializable()
class DestinyProgressionSocketPlugOverride{	
	DestinyProgressionSocketPlugOverride();

	
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
	
	@JsonKey(name:'overrideSingleItemHash')
	int? overrideSingleItemHash;

	factory DestinyProgressionSocketPlugOverride.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionSocketPlugOverrideFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionSocketPlugOverrideToJson(this);

	static Future<DestinyProgressionSocketPlugOverride> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProgressionSocketPlugOverride>((json)=>DestinyProgressionSocketPlugOverride.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}