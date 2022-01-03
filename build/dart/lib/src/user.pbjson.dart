///
//  Generated code. Do not modify.
//  source: src/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDataDescriptor instead')
const UserData$json = const {
  '1': 'UserData',
  '2': const [
    const {'1': 'sessions', '3': 1, '4': 3, '5': 9, '10': 'sessions'},
    const {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.Player', '10': 'players'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `UserData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataDescriptor = $convert.base64Decode('CghVc2VyRGF0YRIaCghzZXNzaW9ucxgBIAMoCVIIc2Vzc2lvbnMSIQoHcGxheWVycxgCIAMoCzIHLlBsYXllclIHcGxheWVycxI5CgpjcmVhdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0');
@$core.Deprecated('Use playerDescriptor instead')
const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode('CgZQbGF5ZXISEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
