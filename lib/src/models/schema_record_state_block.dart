import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'schema_record_state_block.g.dart';

@JsonSerializable()
class SchemaRecordStateBlock{	
	SchemaRecordStateBlock();

	
	@JsonKey(name:'featuredPriority')
	int? featuredPriority;
	
	@JsonKey(name:'obscuredString')
	String? obscuredString;

	factory SchemaRecordStateBlock.fromJson(Map<String, dynamic> json) {
		return _$SchemaRecordStateBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SchemaRecordStateBlockToJson(this);

	static Future<SchemaRecordStateBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SchemaRecordStateBlock>((json)=>SchemaRecordStateBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}