import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_graph_reference.g.dart';

@JsonSerializable()
class DestinyActivityGraphReference{	
	DestinyActivityGraphReference();

	
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;

	factory DestinyActivityGraphReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphReferenceToJson(this);

	static Future<DestinyActivityGraphReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphReference>((json)=>DestinyActivityGraphReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}