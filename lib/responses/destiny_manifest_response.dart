import '../models/destiny_manifest.dart';
class DestinyManifestResponse{
    DestinyManifest response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    DestinyManifestResponse(
		DestinyManifest this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
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