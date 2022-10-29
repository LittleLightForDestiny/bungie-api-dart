import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'interpolation_point_float.g.dart';

@JsonSerializable()
class InterpolationPointFloat{	
	InterpolationPointFloat();

	
	@JsonKey(name:'value')
	double? value;
	
	@JsonKey(name:'weight')
	double? weight;

	factory InterpolationPointFloat.fromJson(Map<String, dynamic> json) {
		return _$InterpolationPointFloatFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$InterpolationPointFloatToJson(this);

	static Future<InterpolationPointFloat> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, InterpolationPointFloat>((json)=>InterpolationPointFloat.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}