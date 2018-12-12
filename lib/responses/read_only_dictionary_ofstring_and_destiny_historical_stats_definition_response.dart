import '../models/destiny_historical_stats_definition.dart';
class ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse{
    Map<DestinyHistoricalStatsDefinition, dynamic> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
		Map<DestinyHistoricalStatsDefinition, dynamic> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
				data['Response'],
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> list = new List();
    data.forEach((item) {
      list.add(ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromMap(item));
    });
    return list;
	}
}