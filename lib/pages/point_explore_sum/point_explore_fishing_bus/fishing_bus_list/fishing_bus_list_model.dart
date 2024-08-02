import '/backend/backend.dart';
import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/point_explore_sum/point_explore_fishing_bus/bus_area/bus_area_widget.dart';
import '/pages/point_explore_sum/point_explore_fishing_bus/bus_extar_filter/bus_extar_filter_widget.dart';
import '/pages/point_explore_sum/point_explore_fishing_bus/bus_fishes/bus_fishes_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'fishing_bus_list_widget.dart' show FishingBusListWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class FishingBusListModel extends FlutterFlowModel<FishingBusListWidget> {
  ///  Local state fields for this page.

  List<String> filterFishes = [];
  void addToFilterFishes(String item) => filterFishes.add(item);
  void removeFromFilterFishes(String item) => filterFishes.remove(item);
  void removeAtIndexFromFilterFishes(int index) => filterFishes.removeAt(index);
  void insertAtIndexInFilterFishes(int index, String item) =>
      filterFishes.insert(index, item);
  void updateFilterFishesAtIndex(int index, Function(String) updateFn) =>
      filterFishes[index] = updateFn(filterFishes[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Bottom Sheet - busFishes] action in Container widget.
  List<String>? selectedFishes;
  // Stores action output result for [Custom Action - busSearch] action in Button widget.
  List<TBFishingBusRecord>? busSearchList;
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
