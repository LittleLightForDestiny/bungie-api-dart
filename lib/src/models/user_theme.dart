
import 'package:json_annotation/json_annotation.dart';
part 'user_theme.g.dart';

@JsonSerializable()
class UserTheme {

	@JsonKey(name:'userThemeId')
	int userThemeId;

	@JsonKey(name:'userThemeName')
	String userThemeName;

	@JsonKey(name:'userThemeDescription')
	String userThemeDescription;
	UserTheme();

	factory UserTheme.fromJson(Map<String, dynamic> json) => _$UserThemeFromJson(json);
	
	Map<String, dynamic> toJson() => _$UserThemeToJson(this);
}
