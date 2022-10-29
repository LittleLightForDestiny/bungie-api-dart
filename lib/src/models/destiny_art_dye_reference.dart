import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_art_dye_reference.g.dart';

@JsonSerializable()
class DestinyArtDyeReference{	
	DestinyArtDyeReference();

	
	@JsonKey(name:'artDyeChannelHash')
	int? artDyeChannelHash;

	factory DestinyArtDyeReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtDyeReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtDyeReferenceToJson(this);

	static Future<DestinyArtDyeReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtDyeReference>((json)=>DestinyArtDyeReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}