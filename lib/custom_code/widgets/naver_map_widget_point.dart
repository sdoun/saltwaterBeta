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
import '/flutter_flow/lat_lng.dart' as latlng;
import 'dart:async';
import 'package:http/http.dart';

class NaverMapWidgetPoint extends StatefulWidget {
  const NaverMapWidgetPoint({
    super.key,
    this.width,
    this.height,
    this.initLat,
    this.initLng,
    this.pointList,
    required this.onClickMarker,
    this.basicIcon,
  });

  final double? width;
  final double? height;
  final double? initLat;
  final double? initLng;
  final List<TBPointRecord>? pointList;
  final Future Function(TBPointRecord markerDoc) onClickMarker;
  final FFUploadedFile? basicIcon;

  @override
  State<NaverMapWidgetPoint> createState() => _NaverMapWidgetPointState();
}

class _NaverMapWidgetPointState extends State<NaverMapWidgetPoint> {
  Set<NMarker> markerList = {};
  var pointLength;
  Completer<NaverMapController> mapControllerCompleter = Completer();
  @override
  void initState() {
    super.initState();
    pointLength = (widget.pointList ?? []).length;
    initializeNaverMap();
    markerList = _createMarkers();
  }

  Future<void> initializeNaverMap() async {
    await NaverMapSdk.instance.initialize(
      clientId: '0q1kaenxe1', // 클라이언트 ID 설정
      onAuthFailed: (e) => print("네이버맵 인증오류: $e"),
    );
  }

  Set<NMarker> _createMarkers() {
    for (int i = 0; i < pointLength; i++) {
      var place = widget.pointList?[i];

      final latlng.LatLng coordinates = latlng.LatLng(
          place?.pointLatitude ?? 0.0, place?.pointLongitude ?? 0.0);
      NLatLng _position =
          NLatLng(place?.pointLatitude ?? 0.0, place?.pointLongitude ?? 0.0);
      NMarker marker = NMarker(id: i.toString(), position: _position);
      marker.setOnTapListener((NMarker marker) {
        print("마커가 터치되었습니다. id: ${marker.info.id}");
        widget.onClickMarker.call(widget.pointList![int.parse(marker.info.id)]);
      });
      markerList.add(marker);
    }
    return markerList;
  }

  void updateMarkers() {
    setState(() {
      markerList.clear();
      markerList = _createMarkers();
      _updateMapOverlays();
    });
  }

  Future<void> _updateMapOverlays() async {
    if (mapControllerCompleter.isCompleted) {
      final controller = await mapControllerCompleter.future;
      controller.clearOverlays();
      controller.addOverlayAll(markerList);
    }
  }

  @override
  void didUpdateWidget(NaverMapWidgetPoint oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pointList != oldWidget.pointList) {
      pointLength = widget.pointList?.length ?? 0;
      updateMarkers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      options: NaverMapViewOptions(
        mapType: NMapType.hybrid,
        minZoom: 3,
        maxZoom: 16,
        extent: NLatLngBounds(
          southWest: NLatLng(31.43, 122.37),
          northEast: NLatLng(44.35, 132.0),
        ),
        initialCameraPosition: NCameraPosition(
            target: NLatLng(widget.initLat ?? 37.0, widget.initLng ?? 127.0),
            zoom: 5,
            bearing: 0,
            tilt: 0),
      ),
      onMapReady: (NaverMapController controller) async {
        mapControllerCompleter.complete(controller);
        controller.clearOverlays();
        controller.addOverlayAll(markerList);
        print('맵 로딩됨');
      },
    );
  }
}
