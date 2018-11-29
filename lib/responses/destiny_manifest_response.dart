import '../models/destiny_manifest.dart';
class DestinyManifestResponse{
    DestinyManifest Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    DestinyManifestResponse(
		DestinyManifest this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static DestinyManifestResponse fromJson(Map<String, dynamic> data){
		return new DestinyManifestResponse(
				DestinyManifest.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyManifestResponse> fromList(List<dynamic> data){
		List<DestinyManifestResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyManifestResponse.fromJson(item));
    });
    return list;
	}
}