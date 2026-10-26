# ASN Lookup API - Dart/Flutter Client

ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier. Paid plans add the registry handle, country code, and announced IP range statistics.

[![pub package](https://img.shields.io/pub/v/apiverve_asnlookup.svg)](https://pub.dev/packages/apiverve_asnlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [ASN Lookup API](https://apiverve.com/marketplace/asnlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_asnlookup: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_asnlookup/apiverve_asnlookup.dart';

void main() async {
  final client = AsnlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'asn': 'AS15169'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "asn": "AS15169",
    "simple": "15169",
    "handle": "GOOGLE",
    "description": "Google LLC",
    "country": "US",
    "ipv4RangeCount": 152,
    "ipv6RangeCount": 33,
    "ipv4AddressCount": 1314816
  }
}
```

## API Reference

- **API Home:** [ASN Lookup API](https://apiverve.com/marketplace/asnlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/asnlookup](https://docs.apiverve.com/ref/asnlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
