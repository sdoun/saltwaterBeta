import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/point_explore_sum/point_category/point_category_widget.dart';
import '/pages/point_explore_sum/point_explore_ocean/ocean_1st_filter/ocean1st_filter_widget.dart';
import '/pages/point_explore_sum/point_explore_ocean/ocean_2nd_filter/ocean2nd_filter_widget.dart';
import '/pages/point_explore_sum/point_explore_seawall/seawall_3rd_filter/seawall3rd_filter_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'explore_map_ocean_widget.dart' show ExploreMapOceanWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ExploreMapOceanModel extends FlutterFlowModel<ExploreMapOceanWidget> {
  ///  Local state fields for this page.

  List<TBPointRecord> filterValue = [];
  void addToFilterValue(TBPointRecord item) => filterValue.add(item);
  void removeFromFilterValue(TBPointRecord item) => filterValue.remove(item);
  void removeAtIndexFromFilterValue(int index) => filterValue.removeAt(index);
  void insertAtIndexInFilterValue(int index, TBPointRecord item) =>
      filterValue.insert(index, item);
  void updateFilterValueAtIndex(int index, Function(TBPointRecord) updateFn) =>
      filterValue[index] = updateFn(filterValue[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  List<TBPointRecord>? exploreMapOceanPreviousSnapshot;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // Stores action output result for [Bottom Sheet - ocean_1stFilter] action in Container widget.
  List<String>? ocean1stFilter;
  // Stores action output result for [Bottom Sheet - ocean_2ndFilter] action in Container widget.
  List<String>? ocean2ndFilter;
  // Stores action output result for [Bottom Sheet - seawall_3rdFilter] action in Container widget.
  List<String>? oceean3rdFilter;
  // Stores action output result for [Custom Action - pointListFromFilter] action in Button widget.
  List<String>? pointList;
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
