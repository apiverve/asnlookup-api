# ASN Lookup API - Ruby Gem

ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier. Paid plans add the registry handle, country code, and announced IP range statistics.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_asnlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_asnlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_asnlookup'

# Initialize the client
client = APIVerve::Asnlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ asn: "AS15169" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ asn: "AS15169" })
  puts response["data"]
rescue APIVerve::Asnlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Asnlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Asnlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/asnlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/asnlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/asnlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
