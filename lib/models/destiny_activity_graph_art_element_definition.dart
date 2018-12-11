import 'destiny_position_definition.dart';
class DestinyActivityGraphArtElementDefinition{
	DestinyPositionDefinition position;
	DestinyActivityGraphArtElementDefinition(
		DestinyPositionDefinition this.position,
	);

	static DestinyActivityGraphArtElementDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyActivityGraphArtElementDefinition.fromJson(item));
    });
    return list;
	}
}