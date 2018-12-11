class UserTheme{
	int userThemeId;
	String userThemeName;
	String userThemeDescription;
	UserTheme(
		int this.userThemeId,
		String this.userThemeName,
		String this.userThemeDescription,
	);

	static UserTheme fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserTheme(
				data['userThemeId'],
				data['userThemeName'],
				data['userThemeDescription'],
		);
	}

	static List<UserTheme> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserTheme> list = new List();
    data.forEach((item) {
      list.add(UserTheme.fromJson(item));
    });
    return list;
	}
}