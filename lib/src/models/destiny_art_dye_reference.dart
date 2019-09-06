
import 'package:json_annotation/json_annotation.dart';
part 'destiny_art_dye_reference.g.dart';

@JsonSerializable()
class DestinyArtDyeReference {

	@JsonKey(name:'artDyeChannelHash')
	int artDyeChannelHash;
	DestinyArtDyeReference();

	factory DestinyArtDyeReference.fromJson(Map<String, dynamic> json) => _$DestinyArtDyeReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyArtDyeReferenceToJson(this);
}
