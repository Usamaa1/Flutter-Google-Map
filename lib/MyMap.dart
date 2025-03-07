import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  static const LatLng _myLoc = LatLng(37.7749, -122.4194);

  // Define markers
  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('my_location'),
      position: _myLoc,
      infoWindow: InfoWindow(title: 'My Location', snippet: 'San Francisco'),
      icon: BitmapDescriptor.defaultMarker, // Default red marker
    ),
    Marker(
      markerId: MarkerId('golden_gate'),
      position: LatLng(37.8199, -122.4783),
      infoWindow: InfoWindow(title: 'Golden Gate Bridge'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _myLoc, zoom: 12),
        markers: _markers,
      ),
    );
  }
}
