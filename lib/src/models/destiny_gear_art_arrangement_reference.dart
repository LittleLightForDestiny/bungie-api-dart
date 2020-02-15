import 'package:json_annotation/json_annotation.dart';


part 'destiny_gear_art_arrangement_reference.g.dart';

@JsonSerializable()
class DestinyGearArtArrangementReference{
	
	DestinyGearArtArrangementReference();

	factory DestinyGearArtArrangementReference.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyGearArtArrangementReferenceFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'classHash')
	int classHash;
	@JsonKey(name:'artArrangementHash')
	int artArrangementHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyGearArtArrangementReferenceToJson(this);
}