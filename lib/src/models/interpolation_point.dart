import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'interpolation_point.g.dart';

@JsonSerializable()
class InterpolationPoint{	
	InterpolationPoint();

	
	@JsonKey(name:'value')
	int? value;
	
	@JsonKey(name:'weight')
	int? weight;

	factory InterpolationPoint.fromJson(Map<String, dynamic> json) {
		return _$InterpolationPointFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$InterpolationPointToJson(this);

	static Future<InterpolationPoint> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, InterpolationPoint>((json)=>InterpolationPoint.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}