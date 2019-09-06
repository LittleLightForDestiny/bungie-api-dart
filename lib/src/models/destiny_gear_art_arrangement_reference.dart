
import 'package:json_annotation/json_annotation.dart';
part 'destiny_gear_art_arrangement_reference.g.dart';

@JsonSerializable()
class DestinyGearArtArrangementReference {

	@JsonKey(name:'classHash')
	int classHash;

	@JsonKey(name:'artArrangementHash')
	int artArrangementHash;
	DestinyGearArtArrangementReference();

	factory DestinyGearArtArrangementReference.fromJson(Map<String, dynamic> json) => _$DestinyGearArtArrangementReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyGearArtArrangementReferenceToJson(this);
}
