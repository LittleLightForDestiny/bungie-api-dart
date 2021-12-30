import 'package:json_annotation/json_annotation.dart';


part 'destiny_color.g.dart';

/// Represents a color whose RGBA values are all represented as values between 0 and 255.
@JsonSerializable()
class DestinyColor{	
	DestinyColor();

	factory DestinyColor.fromJson(Map<String, dynamic> json) {
		return _$DestinyColorFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyColorToJson(this);
	
	@JsonKey(name:'red')
	int? red;
	
	@JsonKey(name:'green')
	int? green;
	
	@JsonKey(name:'blue')
	int? blue;
	
	@JsonKey(name:'alpha')
	int? alpha;
}