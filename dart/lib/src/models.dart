/// Response models for the ASN Lookup API.

/// API Response wrapper.
class AsnlookupResponse {
  final String status;
  final dynamic error;
  final AsnlookupData? data;

  AsnlookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AsnlookupResponse.fromJson(Map<String, dynamic> json) => AsnlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AsnlookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the ASN Lookup API.

class AsnlookupData {
  String? asn;
  String? simple;
  String? handle;
  String? description;

  AsnlookupData({
    this.asn,
    this.simple,
    this.handle,
    this.description,
  });

  factory AsnlookupData.fromJson(Map<String, dynamic> json) => AsnlookupData(
      asn: json['asn'],
      simple: json['simple'],
      handle: json['handle'],
      description: json['description'],
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
