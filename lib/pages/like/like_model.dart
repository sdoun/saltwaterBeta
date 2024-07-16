import '/flutter_flow/flutter_flow_util.dart';
import 'like_widget.dart' show LikeWidget;
import 'package:flutter/material.dart';

class LikeModel extends FlutterFlowModel<LikeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
