import 'package:json_annotation/json_annotation.dart';


part 'content_preview.g.dart';

@JsonSerializable()
class ContentPreview{
	
	ContentPreview();

	factory ContentPreview.fromJson(Map<String, dynamic> json) {
		return _$ContentPreviewFromJson(json);
	}

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

	
	
	Map<String, dynamic> toJson() => _$ContentPreviewToJson(this);
}