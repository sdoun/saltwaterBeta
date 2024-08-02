import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/shop_summary/product_detail/option_dropdown/option_dropdown_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_product_to_wish_widget.dart' show AddProductToWishWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductToWishModel extends FlutterFlowModel<AddProductToWishWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for optionDropdown dynamic component.
  late FlutterFlowDynamicModels<OptionDropdownModel> optionDropdownModels;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {
    optionDropdownModels =
        FlutterFlowDynamicModels(() => OptionDropdownModel());
  }

  @override
  void dispose() {
    optionDropdownModels.dispose();
  }
}
