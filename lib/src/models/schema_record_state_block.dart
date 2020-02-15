import 'package:json_annotation/json_annotation.dart';


part 'schema_record_state_block.g.dart';

@JsonSerializable()
class SchemaRecordStateBlock{
	
	SchemaRecordStateBlock();

	factory SchemaRecordStateBlock.fromJson(Map<String, dynamic> json) {
		try{
			return _$SchemaRecordStateBlockFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'featuredPriority')
	int featuredPriority;
	@JsonKey(name:'obscuredString')
	String obscuredString;

	
	
	Map<String, dynamic> toJson() => _$SchemaRecordStateBlockToJson(this);
}