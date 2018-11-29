import '../helpers/http.dart';
import '../responses/general_user_response.dart';
import '../responses/list_of_general_user_response.dart';
import '../responses/list_of_user_theme_response.dart';
import '../responses/user_membership_data_response.dart';
import '../responses/celist_of_public_partnership_detail_response.dart';
class User{
    static Future<GeneralUserResponse> getBungieNetUserById (
        HttpClient client,
        int id,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/User/GetBungieNetUserById/${id}/", params);
        return client.request(config).then((response){
            return GeneralUserResponse.fromJson(response);
        });
    }
    static Future<ListOfGeneralUserResponse> searchUsers (
        HttpClient client,
        String q,
    ) {
        Map<String, String> params = new Map();
        params['q'] = "${ q }";
        HttpClientConfig config = HttpClientConfig('GET', "/User/SearchUsers/", params);
        return client.request(config).then((response){
            return ListOfGeneralUserResponse.fromJson(response);
        });
    }
    static Future<ListOfUserThemeResponse> getAvailableThemes (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/User/GetAvailableThemes/", params);
        return client.request(config).then((response){
            return ListOfUserThemeResponse.fromJson(response);
        });
    }
    static Future<UserMembershipDataResponse> getMembershipDataById (
        HttpClient client,
        int membershipId,
        int membershipType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/User/GetMembershipsById/${membershipId}/{membershipType}/", params);
        return client.request(config).then((response){
            return UserMembershipDataResponse.fromJson(response);
        });
    }
    static Future<UserMembershipDataResponse> getMembershipDataForCurrentUser (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/User/GetMembershipsForCurrentUser/", params);
        return client.request(config).then((response){
            return UserMembershipDataResponse.fromJson(response);
        });
    }
    static Future<CEListOfPublicPartnershipDetailResponse> getPartnerships (
        HttpClient client,
        int membershipId,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/User/${membershipId}/Partnerships/", params);
        return client.request(config).then((response){
            return CEListOfPublicPartnershipDetailResponse.fromJson(response);
        });
    }
}