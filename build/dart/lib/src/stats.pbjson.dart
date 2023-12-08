//
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use countStatDescriptor instead')
const CountStat$json = {
  '1': 'CountStat',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
    {'1': 'ratePerSecond', '3': 2, '4': 1, '5': 2, '10': 'ratePerSecond'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `CountStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countStatDescriptor = $convert.base64Decode(
    'CglDb3VudFN0YXQSFAoFY291bnQYASABKA1SBWNvdW50EiQKDXJhdGVQZXJTZWNvbmQYAiABKA'
    'JSDXJhdGVQZXJTZWNvbmQSOAoJdXBkYXRlZEF0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRp'
    'bWVzdGFtcFIJdXBkYXRlZEF0');

@$core.Deprecated('Use storeRatingStatDescriptor instead')
const StoreRatingStat$json = {
  '1': 'StoreRatingStat',
  '2': [
    {'1': 'userRatingCount', '3': 1, '4': 1, '5': 13, '10': 'userRatingCount'},
    {'1': 'averageUserRating', '3': 2, '4': 1, '5': 2, '10': 'averageUserRating'},
  ],
};

/// Descriptor for `StoreRatingStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeRatingStatDescriptor = $convert.base64Decode(
    'Cg9TdG9yZVJhdGluZ1N0YXQSKAoPdXNlclJhdGluZ0NvdW50GAEgASgNUg91c2VyUmF0aW5nQ2'
    '91bnQSLAoRYXZlcmFnZVVzZXJSYXRpbmcYAiABKAJSEWF2ZXJhZ2VVc2VyUmF0aW5n');

@$core.Deprecated('Use statsDescriptor instead')
const Stats$json = {
  '1': 'Stats',
  '2': [
    {'1': 'games', '3': 1, '4': 1, '5': 11, '6': '.CountStat', '10': 'games'},
    {'1': 'users', '3': 2, '4': 1, '5': 11, '6': '.CountStat', '10': 'users'},
    {'1': 'appStoreRating', '3': 3, '4': 1, '5': 11, '6': '.StoreRatingStat', '10': 'appStoreRating'},
    {'1': 'createdAt', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Stats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsDescriptor = $convert.base64Decode(
    'CgVTdGF0cxIgCgVnYW1lcxgBIAEoCzIKLkNvdW50U3RhdFIFZ2FtZXMSIAoFdXNlcnMYAiABKA'
    'syCi5Db3VudFN0YXRSBXVzZXJzEjgKDmFwcFN0b3JlUmF0aW5nGAMgASgLMhAuU3RvcmVSYXRp'
    'bmdTdGF0Ug5hcHBTdG9yZVJhdGluZxI4CgljcmVhdGVkQXQYBCABKAsyGi5nb29nbGUucHJvdG'
    '9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

