import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'content_preview.g.dart';

@JsonSerializable()
class ContentPreview{	
	ContentPreview();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'path')
	String? path;
	
	@JsonKey(name:'itemInSet')
	bool? itemInSet;
	
	@JsonKey(name:'setTag')
	String? setTag;
	
	@JsonKey(name:'setNesting')
	int? setNesting;
	
	@JsonKey(name:'useSetId')
	int? useSetId;

	factory ContentPreview.fromJson(Map<String, dynamic> json) {
		return _$ContentPreviewFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentPreviewToJson(this);

	static Future<ContentPreview> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentPreview>((json)=>ContentPreview.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}