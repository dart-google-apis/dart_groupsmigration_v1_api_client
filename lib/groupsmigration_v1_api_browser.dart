library groupsmigration_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_groupsmigration_v1_api/src/browser_client.dart';
import "package:google_groupsmigration_v1_api/groupsmigration_v1_api_client.dart";

/** Groups Migration Api. */
@deprecated
class Groupsmigration extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Groupsmigration([oauth.OAuth2 this.auth]);
}
