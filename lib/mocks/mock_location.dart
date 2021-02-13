import 'package:tourismco/models/location.dart';
import 'package:tourismco/models/location_fact.dart';

class MockLocation extends Location {
  static fetchAny() {
    return Location(
        name: 'Bear Lake, Utah',
        url: 'https://stateparks.utah.gov/parks/bear-lake/',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  '''Brilliantly blue waters combined with sandy beaches are what call park visitors to play, fish, boat, and camp here at Bear Lake State Park. Minerals (calcium carbonate) suspended in the lake’s waters are what help create its spectacular aqua-blue color.'''),
          LocationFact(
              title: 'Rendezvous Beach',
              text:
                  '''On the southwest curve of Bear Lake – Approximately 2 miles northwest from Laketown on SR 30 from the Cisco Road and SR 30 junction.''')
        ]);
  }
}
