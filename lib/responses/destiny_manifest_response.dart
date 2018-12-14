import '../models/destiny_manifest.dart';
class DestinyManifestResponse{
    DestinyManifest response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    DestinyManifestResponse(
		DestinyManifest this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static DestinyManifestResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyManifestResponse(
				data['Response'] != null ? DestinyManifest.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<DestinyManifestResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyManifestResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyManifestResponse.fromMap(item));
    });
    return list;
	}
}