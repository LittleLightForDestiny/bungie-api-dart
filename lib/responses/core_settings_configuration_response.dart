import '../models/core_settings_configuration.dart';
class CoreSettingsConfigurationResponse{
    CoreSettingsConfiguration Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    CoreSettingsConfigurationResponse(
		CoreSettingsConfiguration this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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