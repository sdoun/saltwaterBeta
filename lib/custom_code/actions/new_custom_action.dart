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

Future<List<String>?> newCustomAction(
  List<String>? fish1,
  List<String>? fish2,
) async {
  // Add your function code here!
  List<String> allOptions = [
    '전체',
    '무늬오징어',
    '갑오징어',
    '주꾸미',
    '오징어',
    '한치',
    '낙지',
    '문어',
  ];
  var result;
  var optionRemoved = allOptions;
  if (fish2 == null) {
    return [];
  }
  if (fish2.contains('전체')) {
    if (fish2 != allOptions) {
      result = optionRemoved.remove('전체');
    } else {
      result = allOptions;
    }
  } else if (fish2.contains('전체') == false && optionRemoved.remove('전체')) {
    result = allOptions;
  }
  return result;
}
