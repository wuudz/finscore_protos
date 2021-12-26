///
//  Generated code. Do not modify.
//  source: lib/viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use viewerTypeDescriptor instead')
const ViewerType$json = const {
  '1': 'ViewerType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'APP', '2': 1},
    const {'1': 'WEBSITE', '2': 2},
  ],
};

/// Descriptor for `ViewerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List viewerTypeDescriptor = $convert.base64Decode('CgpWaWV3ZXJUeXBlEgsKB1VOS05PV04QABIHCgNBUFAQARILCgdXRUJTSVRFEAI=');
@$core.Deprecated('Use viewerDescriptor instead')
const Viewer$json = const {
  '1': 'Viewer',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.ViewerType', '10': 'type'},
  ],
};

/// Descriptor for `Viewer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewerDescriptor = $convert.base64Decode('CgZWaWV3ZXISHwoEdHlwZRgBIAEoDjILLlZpZXdlclR5cGVSBHR5cGU=');
