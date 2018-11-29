import 'destiny_currencies_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent{
	Map<DestinyCurrenciesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent(
		Map<DestinyCurrenciesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromJson(item));
    });
    return list;
	}
}