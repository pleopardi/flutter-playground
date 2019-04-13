import "package:flutter/material.dart";
import "package:geocoder/geocoder.dart";

get addressFromCoordinates async {
  final List<Address> _addresses = await Geocoder.local
      .findAddressesFromCoordinates(Coordinates(43.2350828, 13.6332639));

  print("Address: ${_addresses[0].locality}"); // Montegranaro
}

get coordinatesFromAddress async {
  final List<Address> _addresses = await Geocoder.local
      .findAddressesFromQuery("Via Lazio, 1, 63812 Montegranaro FM");

  print("Coordinates: ${_addresses[0].coordinates}");
}

class GeocodingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    addressFromCoordinates;
    coordinatesFromAddress;

    return Container(
      child: Center(child: Text("Geocoding Container")),
    );
  }
}
