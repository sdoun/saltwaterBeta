import '/backend/backend.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'fishing_park_map_widget.dart' show FishingParkMapWidget;
import 'package:flutter/material.dart';

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
