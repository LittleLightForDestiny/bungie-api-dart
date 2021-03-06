import 'package:json_annotation/json_annotation.dart';


part 'datapoint.g.dart';

@JsonSerializable()
class Datapoint{
	
	Datapoint();

	factory Datapoint.fromJson(Map<String, dynamic> json) {
		try{
			return _$DatapointFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Timestamp for the related count.
	@JsonKey(name:'time')
	String time;
	/// Count associated with timestamp
	@JsonKey(name:'count')
	double count;

	
	
	Map<String, dynamic> toJson() => _$DatapointToJson(this);
}