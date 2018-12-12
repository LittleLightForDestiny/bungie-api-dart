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

	static ApplicationDeveloper fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ApplicationDeveloper(
				data['role'],
				data['apiEulaVersion'],
				UserInfoCard.fromMap(data['user']),
		);
	}

	static List<ApplicationDeveloper> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ApplicationDeveloper> list = new List();
    data.forEach((item) {
      list.add(ApplicationDeveloper.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['role'] = this.role;
			data['apiEulaVersion'] = this.apiEulaVersion;
			data['user'] = this.user.toMap();
		return data;
	}
}