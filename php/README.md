# ASN Lookup API - PHP Package

ASN Lookup is a simple tool for getting information on Autonomous System Numbers (ASNs). It returns information on various ASNs.

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
    "country": "US"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/asnlookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/asnlookup?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/asnlookup?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
