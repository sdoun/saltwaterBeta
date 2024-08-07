import '/components/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/shop_summary/product_detail/wish_button/wish_button_widget.dart';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;
  // Model for wishButton component.
  late WishButtonModel wishButtonModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
    wishButtonModel = createModel(context, () => WishButtonModel());
  }

  @override
  void dispose() {
    customNavbarModel.dispose();
    wishButtonModel.dispose();
  }
}
