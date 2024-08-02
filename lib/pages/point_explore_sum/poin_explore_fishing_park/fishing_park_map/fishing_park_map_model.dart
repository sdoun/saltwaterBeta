import '/backend/backend.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/point_explore_sum/poin_explore_fishing_park/park_1st_filter/park1st_filter_widget.dart';
import '/pages/point_explore_sum/poin_explore_fishing_park/park_2nd_filter/park2nd_filter_widget.dart';
import '/pages/point_explore_sum/poin_explore_fishing_park/park_3rd_filter/park3rd_filter_widget.dart';
import '/pages/point_explore_sum/point_category/point_category_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'fishing_park_map_widget.dart' show FishingParkMapWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class FishingParkMapModel extends FlutterFlowModel<FishingParkMapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  List<TBPointRecord>? fishingParkMapPreviousSnapshot;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // Stores action output result for [Bottom Sheet - park_1stFilter] action in Container widget.
  List<String>? park1stFilter;
  // Stores action output result for [Bottom Sheet - park_2ndFilter] action in Container widget.
  List<String>? park2ndFilter;
  // Stores action output result for [Bottom Sheet - park_3rdFilter] action in Container widget.
  List<String>? pension3rdFilter;
  // Stores action output result for [Custom Action - sWFilterSumString] action in Button widget.
  List<String>? pensionPointList;
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
