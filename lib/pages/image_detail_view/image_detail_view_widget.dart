import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'image_detail_view_model.dart';
export 'image_detail_view_model.dart';

class ImageDetailViewWidget extends StatefulWidget {
  const ImageDetailViewWidget({
    super.key,
    required this.imageList,
  });

  final List<String>? imageList;

  @override
  State<ImageDetailViewWidget> createState() => _ImageDetailViewWidgetState();
}

class _ImageDetailViewWidgetState extends State<ImageDetailViewWidget> {
  late ImageDetailViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageDetailViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final imageList = widget.imageList!.toList();

              return Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(imageList.length, (imageListIndex) {
                  final imageListItem = imageList[imageListIndex];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/494/600',
                      width: 200.0,
                      height: 99.0,
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
