import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'dye_reference.g.dart';

@JsonSerializable()
class DyeReference{	
	DyeReference();

	
	@JsonKey(name:'channelHash')
	int? channelHash;
	
	@JsonKey(name:'dyeHash')
	int? dyeHash;

	factory DyeReference.fromJson(Map<String, dynamic> json) {
		return _$DyeReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DyeReferenceToJson(this);

	static Future<DyeReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DyeReference>((json)=>DyeReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}