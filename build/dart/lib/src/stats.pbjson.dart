///
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use countStatDescriptor instead')
const CountStat$json = const {
  '1': 'CountStat',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
    const {'1': 'ratePerSecond', '3': 2, '4': 1, '5': 2, '10': 'ratePerSecond'},
    const {'1': 'updatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `CountStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countStatDescriptor = $convert.base64Decode('CglDb3VudFN0YXQSFAoFY291bnQYASABKA1SBWNvdW50EiQKDXJhdGVQZXJTZWNvbmQYAiABKAJSDXJhdGVQZXJTZWNvbmQSOAoJdXBkYXRlZEF0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0');
@$core.Deprecated('Use storeRatingStatDescriptor instead')
const StoreRatingStat$json = const {
  '1': 'StoreRatingStat',
  '2': const [
    const {'1': 'userRatingCount', '3': 1, '4': 1, '5': 13, '10': 'userRatingCount'},
    const {'1': 'averageUserRating', '3': 2, '4': 1, '5': 2, '10': 'averageUserRating'},
  ],
};

/// Descriptor for `StoreRatingStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeRatingStatDescriptor = $convert.base64Decode('Cg9TdG9yZVJhdGluZ1N0YXQSKAoPdXNlclJhdGluZ0NvdW50GAEgASgNUg91c2VyUmF0aW5nQ291bnQSLAoRYXZlcmFnZVVzZXJSYXRpbmcYAiABKAJSEWF2ZXJhZ2VVc2VyUmF0aW5n');
@$core.Deprecated('Use statsDescriptor instead')
const Stats$json = const {
  '1': 'Stats',
  '2': const [
    const {'1': 'games', '3': 1, '4': 1, '5': 11, '6': '.CountStat', '10': 'games'},
    const {'1': 'users', '3': 2, '4': 1, '5': 11, '6': '.CountStat', '10': 'users'},
    const {'1': 'appStoreRating', '3': 3, '4': 1, '5': 11, '6': '.StoreRatingStat', '10': 'appStoreRating'},
  ],
};

/// Descriptor for `Stats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsDescriptor = $convert.base64Decode('CgVTdGF0cxIgCgVnYW1lcxgBIAEoCzIKLkNvdW50U3RhdFIFZ2FtZXMSIAoFdXNlcnMYAiABKAsyCi5Db3VudFN0YXRSBXVzZXJzEjgKDmFwcFN0b3JlUmF0aW5nGAMgASgLMhAuU3RvcmVSYXRpbmdTdGF0Ug5hcHBTdG9yZVJhdGluZw==');
