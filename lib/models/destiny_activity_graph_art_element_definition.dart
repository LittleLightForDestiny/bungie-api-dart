import 'destiny_position_definition.dart';
class DestinyActivityGraphArtElementDefinition{
	DestinyPositionDefinition position;
	DestinyActivityGraphArtElementDefinition(
		DestinyPositionDefinition this.position,
	);

	static DestinyActivityGraphArtElementDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphArtElementDefinition(
				data['position'],
		);
	}

	static List<DestinyActivityGraphArtElementDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphArtElementDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphArtElementDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['position'] = this.position;
		return data;
	}
}