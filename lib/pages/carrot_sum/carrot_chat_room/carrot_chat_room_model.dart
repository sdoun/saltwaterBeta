import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carrot_chat_room_widget.dart' show CarrotChatRoomWidget;
import 'package:flutter/material.dart';

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
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customNavbarModel.dispose();
  }
}