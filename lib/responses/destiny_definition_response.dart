import '../models/destiny_definition.dart';
class DestinyDefinitionResponse{
    DestinyDefinition Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyDefinitionResponse(
		DestinyDefinition this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyDefinitionResponse fromJson(Map<String, dynamic> data){
		return new DestinyDefinitionResponse(
				DestinyDefinition.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyDefinitionResponse> fromList(List<dynamic> data){
		List<DestinyDefinitionResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyDefinitionResponse.fromJson(item));
    });
    return list;
	}
}