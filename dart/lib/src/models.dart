/// Response models for the ASN Lookup API.

/// API Response wrapper.
class AsnlookupResponse {
  final String status;
  final dynamic error;
  final AsnlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AsnlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AsnlookupResponse.fromJson(Map<String, dynamic> json) => AsnlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AsnlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the ASN Lookup API.

class AsnlookupData {
  String? asn;
  String? simple;
  String? handle;
  String? description;
  String? country;
  num? ipv4RangeCount;
  num? ipv6RangeCount;
  num? ipv4AddressCount;

  AsnlookupData({
    this.asn,
    this.simple,
    this.handle,
    this.description,
    this.country,
    this.ipv4RangeCount,
    this.ipv6RangeCount,
    this.ipv4AddressCount,
  });

  factory AsnlookupData.fromJson(Map<String, dynamic> json) => AsnlookupData(
      asn: json['asn'],
      simple: json['simple'],
      handle: json['handle'],
      description: json['description'],
      country: json['country'],
      ipv4RangeCount: json['ipv4RangeCount'],
      ipv6RangeCount: json['ipv6RangeCount'],
      ipv4AddressCount: json['ipv4AddressCount'],
    );
}

class AsnlookupRequest {
  String asn;

  AsnlookupRequest({
    required this.asn,
  });

  Map<String, dynamic> toJson() => {
      'asn': asn,
    };
}
