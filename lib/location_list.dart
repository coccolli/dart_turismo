import 'package:flutter/material.dart';
import 'package:tourismco/location_detail.dart';
import 'models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations")),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  void _navigateToLocationDetail(BuildContext context, Location location) {
    print('Tapped on ${location.name}');
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetail(location),
        ));
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        location.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _itemTitle(Location location) {
    return Text('${location.name}');
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = this.locations[index];

    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        onTap: () => _navigateToLocationDetail(context, location),
        leading: _itemThumbnail(location),
        title: _itemTitle(location));
  }
}
