import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/carrot_sum/carrot_nav_bar/carrot_nav_bar_widget.dart';
import 'carrot_liked_widget.dart' show CarrotLikedWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrotLikedModel extends FlutterFlowModel<CarrotLikedWidget> {
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
