import 'dart:async';
import 'dart:ui' as ui;

import 'package:app/modules/home/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class TrackedMapWidget extends StatefulWidget {
  const TrackedMapWidget({Key? key}) : super(key: key);
  @override
  State<TrackedMapWidget> createState() => TrackedMapWidgetState();
}

class TrackedMapWidgetState extends State<TrackedMapWidget> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(47.926229, 106.983157);
  static const LatLng destination = LatLng(47.913632, 106.985131);
  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentIcon = BitmapDescriptor.defaultMarker;
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<void> _addMarker(tmpLat, tmpLng, markerIdVal) async {
    final MarkerId markerId = MarkerId(markerIdVal);
    final Uint8List markerIcon =
        await getBytesFromAsset('assets/images/logo.png', 100);

    // creating a new MARKER
    final Marker marker = Marker(
      icon: BitmapDescriptor.fromBytes(markerIcon),
      markerId: markerId,
      position: LatLng(tmpLat, tmpLng),
      infoWindow: InfoWindow(title: markerIdVal, snippet: 'asdfsadf'),
    );

    setState(() {
      // adding a new marker to map
      markers[markerId] = marker;
    });
  }

  void getCurrentLocation() async {
    Location location = Location();
    location.getLocation().then((location) {
      setState(() {
        currentLocation = location;
      });
    });
    GoogleMapController googleMapController = await _controller.future;
    location.onLocationChanged.listen((newLoc) {
      setState(() {
        currentLocation = newLoc;
      });
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyBfIRFXoIgr-h4EDa-MK0S1rs1BViwMP_Y",
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude));
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }
    _addMarker(47.926229, 106.983157, 'exp1');
    _addMarker(47.913632, 106.985131, 'exp2');
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Scaffold(
      body: currentLocation == null
          ? const Center(
              child: Text('loading'),
            )
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ),
              // polylines: {
              //   Polyline(
              //       polylineId: PolylineId("route"),
              //       points: polylineCoordinates,
              //       color: primary,
              //       width: 6)
              // },
              markers: {
                Marker(
                  markerId: const MarkerId("currentLocation"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                markers[const MarkerId('exp1')]!,
                markers[const MarkerId('exp2')]!,
              },
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },
            ),
    );
  }
}
