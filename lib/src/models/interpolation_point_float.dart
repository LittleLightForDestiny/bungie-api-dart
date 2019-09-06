
import 'package:json_annotation/json_annotation.dart';
part 'interpolation_point_float.g.dart';

@JsonSerializable()
class InterpolationPointFloat {

	@JsonKey(name:'value')
	double value;

	@JsonKey(name:'weight')
	double weight;
	InterpolationPointFloat();

	factory InterpolationPointFloat.fromJson(Map<String, dynamic> json) => _$InterpolationPointFloatFromJson(json);
	
	Map<String, dynamic> toJson() => _$InterpolationPointFloatToJson(this);
}
