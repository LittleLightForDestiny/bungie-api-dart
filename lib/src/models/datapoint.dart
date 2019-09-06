
import 'package:json_annotation/json_annotation.dart';
part 'datapoint.g.dart';

@JsonSerializable()
class Datapoint {

	/// Timestamp for the related count.
	@JsonKey(name:'time')
	String time;

	/// Count associated with timestamp
	@JsonKey(name:'count')
	int count;
	Datapoint();

	factory Datapoint.fromJson(Map<String, dynamic> json) => _$DatapointFromJson(json);
	
	Map<String, dynamic> toJson() => _$DatapointToJson(this);
}
