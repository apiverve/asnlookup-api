# ASN Lookup API - PHP Package

ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier. Paid plans add the registry handle, country code, and announced IP range statistics.

## Installation

Install via Composer:

```bash
composer require apiverve/asnlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Asnlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['asn' => 'AS15169']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Asnlookup\Client;
use APIVerve\Asnlookup\Exceptions\APIException;
use APIVerve\Asnlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['asn' => 'AS15169']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/asnlookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/asnlookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/asnlookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
