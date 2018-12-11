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

    static ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse fromJson(Map<String, dynamic> data){
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
		List<ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse> list = new List();
    data.forEach((item) {
      list.add(ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse.fromJson(item));
    });
    return list;
	}
}