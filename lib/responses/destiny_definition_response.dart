import '../models/destiny_definition.dart';
class DestinyDefinitionResponse{
    DestinyDefinition response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyDefinitionResponse(
		DestinyDefinition this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyDefinitionResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDefinitionResponse(
				DestinyDefinition.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyDefinitionResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDefinitionResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyDefinitionResponse.fromMap(item));
    });
    return list;
	}
}