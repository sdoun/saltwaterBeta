import '/flutter_flow/flutter_flow_util.dart';
import 'loading1_widget.dart' show Loading1Widget;
import 'package:flutter/material.dart';

class Loading1Model extends FlutterFlowModel<Loading1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
