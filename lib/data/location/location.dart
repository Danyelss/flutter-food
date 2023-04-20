import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';

class LocationService {
  Location location = Location();

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  Future<String> getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return 'Service not enabled';
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return 'Permission not granted';
      }
    }

    _locationData = await location.getLocation();

    GBLatLng position = GBLatLng(lat: 38.8951, lng: -77.0364);
    GBData data = await GeocoderBuddy.findDetails(position);
    print(
        '${data.address.village}, ${data.address},${data.address.county}, ${data.address.state}');
    return '${data.address.village}, ${data.address},${data.address.county}, ${data.address.state}';
  }
}
