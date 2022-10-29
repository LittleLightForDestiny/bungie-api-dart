import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'datapoint.g.dart';

@JsonSerializable()
class Datapoint{	
	Datapoint();

	
	/// Timestamp for the related count.
	@JsonKey(name:'time')
	String? time;
	
	/// Count associated with timestamp
	@JsonKey(name:'count')
	double? count;

	factory Datapoint.fromJson(Map<String, dynamic> json) {
		return _$DatapointFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DatapointToJson(this);

	static Future<Datapoint> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, Datapoint>((json)=>Datapoint.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}