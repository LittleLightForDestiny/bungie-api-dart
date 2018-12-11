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

    static CoreSettingsConfigurationResponse fromJson(Map<String, dynamic> data){
		return new CoreSettingsConfigurationResponse(
				CoreSettingsConfiguration.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CoreSettingsConfigurationResponse> fromList(List<dynamic> data){
		List<CoreSettingsConfigurationResponse> list = new List();
    data.forEach((item) {
      list.add(CoreSettingsConfigurationResponse.fromJson(item));
    });
    return list;
	}
}