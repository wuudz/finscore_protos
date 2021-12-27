///
//  Generated code. Do not modify.
//  source: src/session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = const {
  '1': 'Session',
  '2': const [
    const {'1': 'owner', '3': 1, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'viewers', '3': 2, '4': 3, '5': 11, '6': '.Session.ViewersEntry', '10': 'viewers'},
    const {'1': 'players', '3': 3, '4': 3, '5': 11, '6': '.Session.PlayersEntry', '10': 'players'},
    const {'1': 'games', '3': 4, '4': 3, '5': 11, '6': '.Game', '10': 'games'},
  ],
  '3': const [Session_ViewersEntry$json, Session_PlayersEntry$json],
};

@$core.Deprecated('Use sessionDescriptor instead')
const Session_ViewersEntry$json = const {
  '1': 'ViewersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Viewer', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use sessionDescriptor instead')
const Session_PlayersEntry$json = const {
  '1': 'PlayersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Player', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode('CgdTZXNzaW9uEhQKBW93bmVyGAEgASgJUgVvd25lchIvCgd2aWV3ZXJzGAIgAygLMhUuU2Vzc2lvbi5WaWV3ZXJzRW50cnlSB3ZpZXdlcnMSLwoHcGxheWVycxgDIAMoCzIVLlNlc3Npb24uUGxheWVyc0VudHJ5UgdwbGF5ZXJzEhsKBWdhbWVzGAQgAygLMgUuR2FtZVIFZ2FtZXMaQwoMVmlld2Vyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh0KBXZhbHVlGAIgASgLMgcuVmlld2VyUgV2YWx1ZToCOAEaQwoMUGxheWVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh0KBXZhbHVlGAIgASgLMgcuUGxheWVyUgV2YWx1ZToCOAE=');
