///
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statDescriptor instead')
const Stat$json = const {
  '1': 'Stat',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
    const {'1': 'ratePerSecond', '3': 2, '4': 1, '5': 2, '10': 'ratePerSecond'},
    const {'1': 'updatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Stat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statDescriptor = $convert.base64Decode('CgRTdGF0EhQKBWNvdW50GAEgASgNUgVjb3VudBIkCg1yYXRlUGVyU2Vjb25kGAIgASgCUg1yYXRlUGVyU2Vjb25kEjgKCXVwZGF0ZWRBdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use statsDescriptor instead')
const Stats$json = const {
  '1': 'Stats',
  '2': const [
    const {'1': 'games', '3': 1, '4': 1, '5': 11, '6': '.Stat', '10': 'games'},
  ],
};

/// Descriptor for `Stats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsDescriptor = $convert.base64Decode('CgVTdGF0cxIbCgVnYW1lcxgBIAEoCzIFLlN0YXRSBWdhbWVz');
