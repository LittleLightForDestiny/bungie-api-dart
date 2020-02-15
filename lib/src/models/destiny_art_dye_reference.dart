import 'package:json_annotation/json_annotation.dart';


part 'destiny_art_dye_reference.g.dart';

@JsonSerializable()
class DestinyArtDyeReference{
	
	DestinyArtDyeReference();

	factory DestinyArtDyeReference.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyArtDyeReferenceFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'artDyeChannelHash')
	int artDyeChannelHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtDyeReferenceToJson(this);
}