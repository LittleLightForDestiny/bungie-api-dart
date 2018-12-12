import 'destiny_currencies_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent{
	Map<DestinyCurrenciesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent(
		Map<DestinyCurrenciesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}