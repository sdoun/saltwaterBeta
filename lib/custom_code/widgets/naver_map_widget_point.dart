// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'dart:async';

class NaverMapWidgetPoint extends StatefulWidget {
  const NaverMapWidgetPoint({
    super.key,
    this.width,
    this.height,
    this.initLat,
    this.initLng,
  });

  final double? width;
  final double? height;
  final double? initLat;
  final double? initLng;

  @override
  State<NaverMapWidgetPoint> createState() => _NaverMapWidgetPointState();
}

class _NaverMapWidgetPointState extends State<NaverMapWidgetPoint> {
  @override
  void initState() {
    super.initState();
    initializeNaverMap();
  }

  Future<void> initializeNaverMap() async {
    await NaverMapSdk.instance.initialize(
      clientId: '0q1kaenxe1', // 클라이언트 ID 설정
      onAuthFailed: (e) => print("네이버맵 인증오류: $e"),
    );
  }

  @override
  Widget build(BuildContext context) {
    Completer<NaverMapController> mapControllerCompleter = Completer();

    return NaverMap(
      options: NaverMapViewOptions(
        mapType: NMapType.basic,
        extent: NLatLngBounds(
          southWest: NLatLng(31.43, 122.37),
          northEast: NLatLng(44.35, 132.0),
        ),
        initialCameraPosition: NCameraPosition(
            target: NLatLng(widget.initLat ?? 37.0, widget.initLng ?? 127.0),
            zoom: 10,
            bearing: 0,
            tilt: 0),
      ),
      onMapReady: (NaverMapController controller) async {
        mapControllerCompleter.complete(controller);
        print('맵 로딩됨');
      },
    );
  }
}
