
import 'package:json_annotation/json_annotation.dart';
part 'interpolation_point.g.dart';

@JsonSerializable()
class InterpolationPoint {

	@JsonKey(name:'value')
	int value;

	@JsonKey(name:'weight')
	int weight;
	InterpolationPoint();

	factory InterpolationPoint.fromJson(Map<String, dynamic> json) => _$InterpolationPointFromJson(json);
	
	Map<String, dynamic> toJson() => _$InterpolationPointToJson(this);
}
