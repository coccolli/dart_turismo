import 'package:flutter/material.dart';
import 'package:tourismco/location_list.dart';
import 'package:tourismco/mocks/mock_location.dart';

import 'location_detail.dart';
import 'location_list.dart';
import 'models/location.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();
  return runApp(MaterialApp(home: LocationList(mockLocations)));
}
