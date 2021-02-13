import 'package:flutter/material.dart';
import 'package:tourismco/mocks/mock_location.dart';

import 'location_detail.dart';
import 'models/location.dart';

void main() {
  final Location mockLocation = MockLocation.fetchAny();
  return runApp(MaterialApp(home: LocationDetail(mockLocation)));
}
