import '../models/destiny_historical_stats_definition.dart';
class ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse{
    Map<DestinyHistoricalStatsDefinition, dynamic> Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ReadOnlyDictionaryOfstringAndDestinyHistoricalStatsDefinitionResponse(
		Map<DestinyHistoricalStatsDefinition, dynamic> this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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