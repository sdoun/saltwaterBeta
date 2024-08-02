import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/carrot_sum/carrot_nav_bar/carrot_nav_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrot_home_widget.dart' show CarrotHomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrotHomeModel extends FlutterFlowModel<CarrotHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for carrotNavBar component.
  late CarrotNavBarModel carrotNavBarModel;

  @override
  void initState(BuildContext context) {
    carrotNavBarModel = createModel(context, () => CarrotNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    carrotNavBarModel.dispose();
  }
}
