import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/carrot_sum/carrot_nav_bar/carrot_nav_bar_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrot_search_result_widget.dart' show CarrotSearchResultWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrotSearchResultModel
    extends FlutterFlowModel<CarrotSearchResultWidget> {
  ///  Local state fields for this page.

  List<TBCarrotPostRecord> posts = [];
  void addToPosts(TBCarrotPostRecord item) => posts.add(item);
  void removeFromPosts(TBCarrotPostRecord item) => posts.remove(item);
  void removeAtIndexFromPosts(int index) => posts.removeAt(index);
  void insertAtIndexInPosts(int index, TBCarrotPostRecord item) =>
      posts.insert(index, item);
  void updatePostsAtIndex(int index, Function(TBCarrotPostRecord) updateFn) =>
      posts[index] = updateFn(posts[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in carrot_searchResult widget.
  List<TBCarrotPostRecord>? postsQuery;
  // Stores action output result for [Custom Action - carrotSearch] action in carrot_searchResult widget.
  List<TBCarrotPostRecord>? searchResults;
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
