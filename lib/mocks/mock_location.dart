import 'package:tourismco/models/location.dart';
import 'package:tourismco/models/location_fact.dart';

class MockLocation extends Location {
  static final List<Location> items = [
    Location(
        name: 'Bountiful, Utah',
        url:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Bountiful_Utah_Historic_District.jpeg/1280px-Bountiful_Utah_Historic_District.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  '''Bountiful is a city in Davis County, Utah, United States. As of the 2010 census, the city population was 42,552, a three percent increase over the 2000 figure of 41,301. The city grew rapidly during the suburb growth of the late 1940s, 1950s, and 1960s and was Davis County's largest city until 1985 when it was surpassed by Layton. Bountiful is Utah's 15th largest city.''')
        ]),
    Location(
        name: 'Bear Lake, Utah',
        url:
            'https://stateparks.utah.gov/wp-content/uploads/sites/13/2019/09/ma.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  '''Brilliantly blue waters combined with sandy beaches are what call park visitors to play, fish, boat, and camp here at Bear Lake State Park. Minerals (calcium carbonate) suspended in the lake’s waters are what help create its spectacular aqua-blue color.'''),
          LocationFact(
              title: 'Rendezvous Beach',
              text:
                  '''On the southwest curve of Bear Lake – Approximately 2 miles northwest from Laketown on SR 30 from the Cisco Road and SR 30 junction.''')
        ]),
    Location(
        name: 'Snowbasin Resort, Utah',
        url:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Basin_1x_blue_sky.jpg/1280px-Basin_1x_blue_sky.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  '''Snowbasin Resort is a ski resort in the western United States, located in Weber County, Utah, 33 miles (53 km) northeast of Salt Lake City, on the back (east) side of the Wasatch Range.'''),
          LocationFact(
              title: 'History',
              text:
                  '''Snowbasin is one of the oldest continuously operating ski areas in the United States.[2] Following the end of World War I and the Great Depression numerous small ski resorts were developed in Utah's snow-packed mountains, and Weber County wanted one of their own. They decided to redevelop the area in and around Wheeler Basin, a deteriorated watershed area that had been overgrazed and subjected to aggressive timber-harvesting.[3]'''),
        ])
  ];

  static fetchAny() {
    return MockLocation.items[0];
  }

  static fetchAll() {
    return MockLocation.items;
  }
}
