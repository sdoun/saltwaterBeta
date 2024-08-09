// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:app_links/app_links.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future initAppLInk() async {
  // Add your function code here!
  final appLinks = AppLinks();

  // Handle the initial link if it exists
  try {
    final initialLink = await appLinks.getInitialLink();
    if (initialLink != null) {
      _handleDeepLink(initialLink.toString());
    }
  } catch (e) {
    print("Error retrieving initial app link: $e");
  }

  // This will handle the link that the app receives while already opened
  appLinks.uriLinkStream.listen((Uri? uri) {
    if (uri != null) {
      _handleDeepLink(uri.toString());
    }
  }, onError: (err) {
    print("Error while listening to deep links: $err");
  });
}

Future _handleDeepLink(String link) async {
  print("Handling deep link $link");
  final Uri uri = Uri.parse(link);

  if (uri.authority == 'login-callback') {
    final firebaseToken = uri.queryParameters['firebaseToken'];
    final String? name = uri.queryParameters['name'];
    final String? profileImage = uri.queryParameters['profileImage'];

    if (firebaseToken != null) {
      await FirebaseAuth.instance.signInWithCustomToken(firebaseToken);
    } else {
      print("Firebase token is missing in the deep link.");
    }
  }
}
