import '../models/destiny_historical_stats_definition.dart';
class ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse{
    Map<String, DestinyHistoricalStatsDefinition> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
		Map<String, DestinyHistoricalStatsDefinition> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
				data['Response'] != null ? Map<String, DestinyHistoricalStatsDefinition>.from(data['Response'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsDefinition.fromMap(v)))) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
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