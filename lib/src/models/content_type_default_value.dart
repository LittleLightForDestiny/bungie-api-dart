import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'content_type_default_value.g.dart';

@JsonSerializable()
class ContentTypeDefaultValue{	
	ContentTypeDefaultValue();

	
	@JsonKey(name:'whenClause')
	String? whenClause;
	
	@JsonKey(name:'whenValue')
	String? whenValue;
	
	@JsonKey(name:'defaultValue')
	String? defaultValue;

	factory ContentTypeDefaultValue.fromJson(Map<String, dynamic> json) {
		return _$ContentTypeDefaultValueFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentTypeDefaultValueToJson(this);

	static Future<ContentTypeDefaultValue> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentTypeDefaultValue>((json)=>ContentTypeDefaultValue.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}