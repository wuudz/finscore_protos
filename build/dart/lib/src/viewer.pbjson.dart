///
//  Generated code. Do not modify.
//  source: src/viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use viewerTypeDescriptor instead')
const ViewerType$json = const {
  '1': 'ViewerType',
  '2': const [
    const {'1': 'WEBSITE', '2': 0},
    const {'1': 'APP', '2': 1},
  ],
};

/// Descriptor for `ViewerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List viewerTypeDescriptor = $convert.base64Decode('CgpWaWV3ZXJUeXBlEgsKB1dFQlNJVEUQABIHCgNBUFAQAQ==');
@$core.Deprecated('Use viewerDescriptor instead')
const Viewer$json = const {
  '1': 'Viewer',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.ViewerType', '10': 'type'},
    const {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `Viewer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewerDescriptor = $convert.base64Decode('CgZWaWV3ZXISHwoEdHlwZRgBIAEoDjILLlZpZXdlclR5cGVSBHR5cGUSEAoDdWlkGAIgASgJUgN1aWQ=');
