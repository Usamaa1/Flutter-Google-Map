# flutter_map

A new Flutter Google Map project.

## Getting Started

## Android 
*Specify your API key in the application manifest **android/app/src/main/AndroidManifest.xml**:*

     <manifest ...
      <application ...
        <meta-data android:name="com.google.android.geo.API_KEY"
                   android:value="YOUR KEY HERE"/>
The API Key I used ***AIzaSyC7b7d54QTx3k2ZewhxoEzYEfCVQUNocL4***

Example with API Key:

    <!-- Paste this code in AndroidManifest.xml file -->
    <manifest  xmlns:android="http://schemas.android.com/apk/res/android">
    
    <application
    
    android:label="flutter_map"
    
    android:name="${applicationName}"
    
    android:icon="@mipmap/ic_launcher">
    
    <meta-data  android:name="com.google.android.geo.API_KEY"
    
    android:value="AIzaSyC7b7d54QTx3k2ZewhxoEzYEfCVQUNocL4"/>
    
    <activity
    
    android:name=".MainActivity"
    
    android:exported="true"
    
    android:launchMode="singleTop"
    
    android:taskAffinity=""
    
    android:theme="@style/LaunchTheme"
    
    android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
    
    android:hardwareAccelerated="true"
    
    android:windowSoftInputMode="adjustResize">
    
    <!-- Specifies an Android theme to apply to this Activity as soon as
    
    the Android process has started. This theme is visible to the user
    
    while the Flutter UI initializes. After that, this theme continues
    
    to determine the Window background behind the Flutter UI. -->
    
    <meta-data
    
    android:name="io.flutter.embedding.android.NormalTheme"
    
    android:resource="@style/NormalTheme"
    
    />
    
    <intent-filter>
    
    <action  android:name="android.intent.action.MAIN"/>
    
    <category  android:name="android.intent.category.LAUNCHER"/>
    
    </intent-filter>
    
    </activity>
    
    <!-- Don't delete the meta-data below.
    
    This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
    
    <meta-data
    
    android:name="flutterEmbedding"
    
    android:value="2"  />
    
    </application>
    
    <!-- Required to query activities that can process text, see:
    
    https://developer.android.com/training/package-visibility and
    
    https://developer.android.com/reference/android/content/Intent#ACTION_PROCESS_TEXT.
    
      
    
    In particular, this is used by the Flutter engine in io.flutter.plugin.text.ProcessTextPlugin. -->
    
    <queries>
    
    <intent>
    
    <action  android:name="android.intent.action.PROCESS_TEXT"/>
    
    <data  android:mimeType="text/plain"/>
    
    </intent>
    
    </queries>
    
    </manifest>

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


