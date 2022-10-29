import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_event_card_images.g.dart';

@JsonSerializable()
class DestinyEventCardImages{	
	DestinyEventCardImages();

	
	@JsonKey(name:'unownedCardSleeveImagePath')
	String? unownedCardSleeveImagePath;
	
	@JsonKey(name:'unownedCardSleeveWrapImagePath')
	String? unownedCardSleeveWrapImagePath;
	
	@JsonKey(name:'cardIncompleteImagePath')
	String? cardIncompleteImagePath;
	
	@JsonKey(name:'cardCompleteImagePath')
	String? cardCompleteImagePath;
	
	@JsonKey(name:'cardCompleteWrapImagePath')
	String? cardCompleteWrapImagePath;
	
	@JsonKey(name:'progressIconImagePath')
	String? progressIconImagePath;
	
	@JsonKey(name:'themeBackgroundImagePath')
	String? themeBackgroundImagePath;

	factory DestinyEventCardImages.fromJson(Map<String, dynamic> json) {
		return _$DestinyEventCardImagesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEventCardImagesToJson(this);

	static Future<DestinyEventCardImages> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEventCardImages>((json)=>DestinyEventCardImages.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}