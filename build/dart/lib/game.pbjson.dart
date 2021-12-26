///
//  Generated code. Do not modify.
//  source: lib/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use playerOrderDescriptor instead')
const PlayerOrder$json = const {
  '1': 'PlayerOrder',
  '2': const [
    const {'1': 'USER_DEFINED', '2': 0},
    const {'1': 'RANDOM', '2': 1},
  ],
};

/// Descriptor for `PlayerOrder`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playerOrderDescriptor = $convert.base64Decode('CgtQbGF5ZXJPcmRlchIQCgxVU0VSX0RFRklORUQQABIKCgZSQU5ET00QAQ==');
@$core.Deprecated('Use gameConfigDescriptor instead')
const GameConfig$json = const {
  '1': 'GameConfig',
  '2': const [
    const {'1': 'zeros', '3': 1, '4': 1, '5': 13, '10': 'zeros'},
    const {'1': 'reset_score', '3': 2, '4': 1, '5': 13, '10': 'resetScore'},
    const {'1': 'winning_score', '3': 3, '4': 1, '5': 13, '10': 'winningScore'},
    const {'1': 'player_order', '3': 4, '4': 1, '5': 14, '6': '.PlayerOrder', '10': 'playerOrder'},
  ],
};

/// Descriptor for `GameConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameConfigDescriptor = $convert.base64Decode('CgpHYW1lQ29uZmlnEhQKBXplcm9zGAEgASgNUgV6ZXJvcxIfCgtyZXNldF9zY29yZRgCIAEoDVIKcmVzZXRTY29yZRIjCg13aW5uaW5nX3Njb3JlGAMgASgNUgx3aW5uaW5nU2NvcmUSLwoMcGxheWVyX29yZGVyGAQgASgOMgwuUGxheWVyT3JkZXJSC3BsYXllck9yZGVy');
@$core.Deprecated('Use gamePlayerDescriptor instead')
const GamePlayer$json = const {
  '1': 'GamePlayer',
  '2': const [
    const {'1': 'scores', '3': 1, '4': 3, '5': 13, '10': 'scores'},
    const {'1': 'kicked', '3': 2, '4': 1, '5': 8, '10': 'kicked'},
  ],
};

/// Descriptor for `GamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gamePlayerDescriptor = $convert.base64Decode('CgpHYW1lUGxheWVyEhYKBnNjb3JlcxgBIAMoDVIGc2NvcmVzEhYKBmtpY2tlZBgCIAEoCFIGa2lja2Vk');
@$core.Deprecated('Use gameDescriptor instead')
const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.GameConfig', '10': 'config'},
    const {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.Game.PlayersEntry', '10': 'players'},
  ],
  '3': const [Game_PlayersEntry$json],
};

@$core.Deprecated('Use gameDescriptor instead')
const Game_PlayersEntry$json = const {
  '1': 'PlayersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.GamePlayer', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode('CgRHYW1lEiMKBmNvbmZpZxgBIAEoCzILLkdhbWVDb25maWdSBmNvbmZpZxIsCgdwbGF5ZXJzGAIgAygLMhIuR2FtZS5QbGF5ZXJzRW50cnlSB3BsYXllcnMaRwoMUGxheWVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiEKBXZhbHVlGAIgASgLMgsuR2FtZVBsYXllclIFdmFsdWU6AjgB');
