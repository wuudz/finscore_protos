///
//  Generated code. Do not modify.
//  source: lib/game_history.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gameHistoryEventDescriptor instead')
const GameHistoryEvent$json = const {
  '1': 'GameHistoryEvent',
  '2': const [
    const {'1': 'SCORE', '2': 0},
    const {'1': 'START', '2': 1},
    const {'1': 'UNDO', '2': 2},
    const {'1': 'END', '2': 3},
  ],
};

/// Descriptor for `GameHistoryEvent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameHistoryEventDescriptor = $convert.base64Decode('ChBHYW1lSGlzdG9yeUV2ZW50EgkKBVNDT1JFEAASCQoFU1RBUlQQARIICgRVTkRPEAISBwoDRU5EEAM=');
@$core.Deprecated('Use gameHistoryDescriptor instead')
const GameHistory$json = const {
  '1': 'GameHistory',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'event', '3': 3, '4': 1, '5': 14, '6': '.GameHistoryEvent', '10': 'event'},
    const {'1': 'score', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'score'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

/// Descriptor for `GameHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameHistoryDescriptor = $convert.base64Decode('CgtHYW1lSGlzdG9yeRI4Cgl0aW1lc3RhbXAYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXASEAoDdWlkGAIgASgJUgN1aWQSJwoFZXZlbnQYAyABKA4yES5HYW1lSGlzdG9yeUV2ZW50UgVldmVudBIWCgVzY29yZRgEIAEoDUgAUgVzY29yZUIGCgRkYXRh');
