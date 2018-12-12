import '../models/core_settings_configuration.dart';
class CoreSettingsConfigurationResponse{
    CoreSettingsConfiguration response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CoreSettingsConfigurationResponse(
		CoreSettingsConfiguration this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CoreSettingsConfigurationResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSettingsConfigurationResponse(
				CoreSettingsConfiguration.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CoreSettingsConfigurationResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSettingsConfigurationResponse> list = new List();
    data.forEach((item) {
      list.add(CoreSettingsConfigurationResponse.fromMap(item));
    });
    return list;
	}
}