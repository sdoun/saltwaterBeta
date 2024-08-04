import '/flutter_flow/flutter_flow_util.dart';
import 'point_detailed_widget.dart' show PointDetailedWidget;
import 'package:flutter/material.dart';

class PointDetailedModel extends FlutterFlowModel<PointDetailedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
