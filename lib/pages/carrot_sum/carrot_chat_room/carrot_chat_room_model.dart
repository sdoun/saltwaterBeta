import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/carrot_sum/carrot_nav_bar/carrot_nav_bar_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'carrot_chat_room_widget.dart' show CarrotChatRoomWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrotChatRoomModel extends FlutterFlowModel<CarrotChatRoomWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> chatList = [];
  void addToChatList(DocumentReference item) => chatList.add(item);
  void removeFromChatList(DocumentReference item) => chatList.remove(item);
  void removeAtIndexFromChatList(int index) => chatList.removeAt(index);
  void insertAtIndexInChatList(int index, DocumentReference item) =>
      chatList.insert(index, item);
  void updateChatListAtIndex(int index, Function(DocumentReference) updateFn) =>
      chatList[index] = updateFn(chatList[index]);

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
