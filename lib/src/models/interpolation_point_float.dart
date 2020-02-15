import 'package:json_annotation/json_annotation.dart';


part 'interpolation_point_float.g.dart';

@JsonSerializable()
class InterpolationPointFloat{
	
	InterpolationPointFloat();

	factory InterpolationPointFloat.fromJson(Map<String, dynamic> json) {
		try{
			return _$InterpolationPointFloatFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'value')
	double value;
	@JsonKey(name:'weight')
	double weight;

	
	
	Map<String, dynamic> toJson() => _$InterpolationPointFloatToJson(this);
}