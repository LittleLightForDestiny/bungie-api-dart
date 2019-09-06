
import 'package:json_annotation/json_annotation.dart';
part 'destiny_color.g.dart';

/// Represents a color whose RGBA values are all represented as values between 0 and 255.
@JsonSerializable()
class DestinyColor {

	@JsonKey(name:'red')
	int red;

	@JsonKey(name:'green')
	int green;

	@JsonKey(name:'blue')
	int blue;

	@JsonKey(name:'alpha')
	int alpha;
	DestinyColor();

	factory DestinyColor.fromJson(Map<String, dynamic> json) => _$DestinyColorFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyColorToJson(this);
}
