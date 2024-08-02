import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'fish_choicechip_component_widget.dart'
    show FishChoicechipComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FishChoicechipComponentModel
    extends FlutterFlowModel<FishChoicechipComponentWidget> {
  ///  Local state fields for this component.

  List<String> selectend = [];
  void addToSelectend(String item) => selectend.add(item);
  void removeFromSelectend(String item) => selectend.remove(item);
  void removeAtIndexFromSelectend(int index) => selectend.removeAt(index);
  void insertAtIndexInSelectend(int index, String item) =>
      selectend.insert(index, item);
  void updateSelectendAtIndex(int index, Function(String) updateFn) =>
      selectend[index] = updateFn(selectend[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
