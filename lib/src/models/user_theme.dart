import 'package:json_annotation/json_annotation.dart';


part 'user_theme.g.dart';

@JsonSerializable()
class UserTheme{
	
	UserTheme();

	factory UserTheme.fromJson(Map<String, dynamic> json) {
		try{
			return _$UserThemeFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'userThemeId')
	int userThemeId;
	@JsonKey(name:'userThemeName')
	String userThemeName;
	@JsonKey(name:'userThemeDescription')
	String userThemeDescription;

	
	
	Map<String, dynamic> toJson() => _$UserThemeToJson(this);
}