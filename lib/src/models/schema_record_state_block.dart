
import 'package:json_annotation/json_annotation.dart';
part 'schema_record_state_block.g.dart';

@JsonSerializable()
class SchemaRecordStateBlock {

	@JsonKey(name:'featuredPriority')
	int featuredPriority;

	@JsonKey(name:'obscuredString')
	String obscuredString;
	SchemaRecordStateBlock();

	factory SchemaRecordStateBlock.fromJson(Map<String, dynamic> json) => _$SchemaRecordStateBlockFromJson(json);
	
	Map<String, dynamic> toJson() => _$SchemaRecordStateBlockToJson(this);
}
