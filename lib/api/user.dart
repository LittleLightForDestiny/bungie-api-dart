import '../helpers/http.dart';
import '../enums/bungie_credential_type.dart';
import '../enums/bungie_membership_type.dart';
import '../responses/general_user_response.dart';
import '../responses/hard_linked_user_membership_response.dart';
import '../responses/list_of_general_user_response.dart';
import '../responses/list_of_user_theme_response.dart';
import '../responses/user_membership_data_response.dart';
class User{
    /// Loads a bungienet user by membership id.
    static Future<GeneralUserResponse> getBungieNetUserById (
        HttpClient client,
        String id,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _id = '$id';
        final HttpClientConfig config = HttpClientConfig('GET', '/User/GetBungieNetUserById/$_id/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return GeneralUserResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of possible users based on the search string
    static Future<ListOfGeneralUserResponse> searchUsers (
        HttpClient client,
        String q,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['q'] = q;
        final HttpClientConfig config = HttpClientConfig('GET', '/User/SearchUsers/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfGeneralUserResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of all available user themes.
    static Future<ListOfUserThemeResponse> getAvailableThemes (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/User/GetAvailableThemes/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ListOfUserThemeResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of accounts associated with the supplied membership ID and membership type. This will include all linked accounts (even when hidden) if supplied credentials permit it.
    static Future<UserMembershipDataResponse> getMembershipDataById (
        HttpClient client,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/User/GetMembershipsById/$_membershipId/$_membershipType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return UserMembershipDataResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of accounts associated with signed in user. This is useful for OAuth implementations that do not give you access to the token response.
    static Future<UserMembershipDataResponse> getMembershipDataForCurrentUser (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/User/GetMembershipsForCurrentUser/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return UserMembershipDataResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets any hard linked membership given a credential. Only works for credentials that are public (just SteamID64 right now). Cross Save aware.
    static Future<HardLinkedUserMembershipResponse> getMembershipFromHardLinkedCredential (
        HttpClient client,
        String credential,
        BungieCredentialType crType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _credential = '$credential';
        final String _crType = '${crType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/User/GetMembershipFromHardLinkedCredential/$_crType/$_credential/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return HardLinkedUserMembershipResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}