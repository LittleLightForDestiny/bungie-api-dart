import 'user_info_card.dart';
class ApplicationDeveloper{
	int role;
	int apiEulaVersion;
	UserInfoCard user;
	ApplicationDeveloper(
		int this.role,
		int this.apiEulaVersion,
		UserInfoCard this.user,
	);

	static ApplicationDeveloper fromJson(Map<String, dynamic> data){
		return new ApplicationDeveloper(
				data['role'],
				data['apiEulaVersion'],
				UserInfoCard.fromJson(data['user']),
		);
	}

	static List<ApplicationDeveloper> fromList(List<dynamic> data){
		List<ApplicationDeveloper> list = new List();
    data.forEach((item) {
      list.add(ApplicationDeveloper.fromJson(item));
    });
    return list;
	}
}