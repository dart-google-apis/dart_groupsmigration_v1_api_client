library groupsmigration_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_groupsmigration_v1_api/src/cloud_api_console.dart';

import "package:google_groupsmigration_v1_api/groupsmigration_v1_api_client.dart";

/** Groups Migration Api. */
class Groupsmigration extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Groupsmigration([oauth2.OAuth2Console this.auth]);
}
