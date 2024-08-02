import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/point_explore_sum/point_explore_ocean/ocean_2nd_filter/ocean2nd_filter_widget.dart';
import '/pages/point_explore_sum/point_explore_seawall/seawall_3rd_filter/seawall3rd_filter_widget.dart';
import '/pages/point_explore_sum/point_travel_package/package_area/package_area_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'explore_map_travel_widget.dart' show ExploreMapTravelWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ExploreMapTravelModel extends FlutterFlowModel<ExploreMapTravelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  List<TBPointRecord>? exploreMapTravelPreviousSnapshot;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // Stores action output result for [Bottom Sheet - package_area] action in Container widget.
  List<String>? package1stFilter;
  // Stores action output result for [Bottom Sheet - ocean_2ndFilter] action in Container widget.
  List<String>? ocean2ndFilter;
  // Stores action output result for [Bottom Sheet - seawall_3rdFilter] action in Container widget.
  List<String>? oceean3rdFilter;
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    rowController = ScrollController();
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    rowController?.dispose();
    customNavbarModel.dispose();
  }
}
