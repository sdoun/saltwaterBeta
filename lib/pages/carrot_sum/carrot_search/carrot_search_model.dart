import '/flutter_flow/flutter_flow_util.dart';
import '/pages/carrot_sum/carrot_nav_bar/carrot_nav_bar_widget.dart';
import 'carrot_search_widget.dart' show CarrotSearchWidget;
import 'package:flutter/material.dart';

class CarrotSearchModel extends FlutterFlowModel<CarrotSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for carrotNavBar component.
  late CarrotNavBarModel carrotNavBarModel;

  @override
  void initState(BuildContext context) {
    carrotNavBarModel = createModel(context, () => CarrotNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    carrotNavBarModel.dispose();
  }
}
