import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'weather_detailed_widget.dart' show WeatherDetailedWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WeatherDetailedModel extends FlutterFlowModel<WeatherDetailedWidget> {
  ///  Local state fields for this page.

  List<WeatherApiResponseStruct> obsrDataList = [];
  void addToObsrDataList(WeatherApiResponseStruct item) =>
      obsrDataList.add(item);
  void removeFromObsrDataList(WeatherApiResponseStruct item) =>
      obsrDataList.remove(item);
  void removeAtIndexFromObsrDataList(int index) => obsrDataList.removeAt(index);
  void insertAtIndexInObsrDataList(int index, WeatherApiResponseStruct item) =>
      obsrDataList.insert(index, item);
  void updateObsrDataListAtIndex(
          int index, Function(WeatherApiResponseStruct) updateFn) =>
      obsrDataList[index] = updateFn(obsrDataList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customNavbarModel.dispose();
  }
}
