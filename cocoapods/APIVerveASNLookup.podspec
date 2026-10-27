Pod::Spec.new do |s|
  s.name             = 'APIVerveASNLookup'
  s.version          = '1.2.3'
  s.summary          = 'ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier.'
  s.description      = <<-'DESC'
ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier. Paid plans add the registry handle, country code, and announced IP range statistics.

This iOS/macOS SDK provides a convenient way to access the ASN Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/asnlookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/asnlookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveASNLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
