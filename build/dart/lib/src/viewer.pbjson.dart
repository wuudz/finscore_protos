// This is a generated file - do not edit.
//
// Generated from src/viewer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use viewerTypeDescriptor instead')
const ViewerType$json = {
  '1': 'ViewerType',
  '2': [
    {'1': 'WEBSITE', '2': 0},
    {'1': 'APP', '2': 1},
  ],
};

/// Descriptor for `ViewerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List viewerTypeDescriptor =
    $convert.base64Decode('CgpWaWV3ZXJUeXBlEgsKB1dFQlNJVEUQABIHCgNBUFAQAQ==');

@$core.Deprecated('Use viewerDescriptor instead')
const Viewer$json = {
  '1': 'Viewer',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.ViewerType', '10': 'type'},
  ],
};

/// Descriptor for `Viewer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewerDescriptor = $convert
    .base64Decode('CgZWaWV3ZXISHwoEdHlwZRgBIAEoDjILLlZpZXdlclR5cGVSBHR5cGU=');
