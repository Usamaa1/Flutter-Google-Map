# flutter_map

A new Flutter Google Map project.

## Getting Started

## Android 
*Specify your API key in the application manifest android/app/src/main/AndroidManifest.xml:*

 <manifest ...
  <application ...
    <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR KEY HERE"/>

> for further details visit this link: https://pub.dev/packages/google_maps_flutter

*To set markers we have to use this code*

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

*To define longitude and latitude we used this code*


  static const LatLng _myLoc = LatLng(37.7749, -122.4194);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _myLoc, zoom: 12),
        markers: _markers,
      ),
    );
  }

