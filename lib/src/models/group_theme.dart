import 'package:json_annotation/json_annotation.dart';


part 'group_theme.g.dart';

@JsonSerializable()
class GroupTheme{
	
	GroupTheme();

	factory GroupTheme.fromJson(Map<String, dynamic> json) => _$GroupThemeFromJson(json);

	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'folder')
	String folder;
	@JsonKey(name:'description')
	String description;

	
	
	Map<String, dynamic> toJson() => _$GroupThemeToJson(this);
}