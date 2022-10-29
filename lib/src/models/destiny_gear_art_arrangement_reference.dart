import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_gear_art_arrangement_reference.g.dart';

@JsonSerializable()
class DestinyGearArtArrangementReference{	
	DestinyGearArtArrangementReference();

	
	@JsonKey(name:'classHash')
	int? classHash;
	
	@JsonKey(name:'artArrangementHash')
	int? artArrangementHash;

	factory DestinyGearArtArrangementReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyGearArtArrangementReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyGearArtArrangementReferenceToJson(this);

	static Future<DestinyGearArtArrangementReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyGearArtArrangementReference>((json)=>DestinyGearArtArrangementReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}