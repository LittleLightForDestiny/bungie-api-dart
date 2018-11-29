import 'destiny_currencies_component.dart';
class SingleComponentResponseOfDestinyCurrenciesComponent{
	DestinyCurrenciesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCurrenciesComponent(
		DestinyCurrenciesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCurrenciesComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCurrenciesComponent(
				DestinyCurrenciesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCurrenciesComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(item));
    });
    return list;
	}
}