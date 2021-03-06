///
//  Generated code. Do not modify.
//  source: src/game.proto
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
@$core.Deprecated('Use gameStatusDescriptor instead')
const GameStatus$json = const {
  '1': 'GameStatus',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'PLAYING', '2': 1},
    const {'1': 'PAUSED', '2': 2},
    const {'1': 'FINISHED', '2': 3},
    const {'1': 'CANCELED', '2': 4},
  ],
};

/// Descriptor for `GameStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameStatusDescriptor = $convert.base64Decode('CgpHYW1lU3RhdHVzEgsKB1VOS05PV04QABILCgdQTEFZSU5HEAESCgoGUEFVU0VEEAISDAoIRklOSVNIRUQQAxIMCghDQU5DRUxFRBAE');
@$core.Deprecated('Use gameAwardTypeDescriptor instead')
const GameAwardType$json = const {
  '1': 'GameAwardType',
  '2': const [
    const {'1': 'SLOW_POKE', '2': 0},
    const {'1': 'SHARP_SHOOTER', '2': 1},
    const {'1': 'PEA_SHOOTER', '2': 2},
    const {'1': 'TWELVIE', '2': 3},
    const {'1': 'HIGH_ROLLER', '2': 4},
    const {'1': 'ZEROS', '2': 5},
    const {'1': 'RESETTER', '2': 6},
    const {'1': 'SO_CLOSE', '2': 7},
    const {'1': 'LOWEST_SCORE', '2': 8},
    const {'1': 'CLOSE_CALL', '2': 9},
  ],
};

/// Descriptor for `GameAwardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameAwardTypeDescriptor = $convert.base64Decode('Cg1HYW1lQXdhcmRUeXBlEg0KCVNMT1dfUE9LRRAAEhEKDVNIQVJQX1NIT09URVIQARIPCgtQRUFfU0hPT1RFUhACEgsKB1RXRUxWSUUQAxIPCgtISUdIX1JPTExFUhAEEgkKBVpFUk9TEAUSDAoIUkVTRVRURVIQBhIMCghTT19DTE9TRRAHEhAKDExPV0VTVF9TQ09SRRAIEg4KCkNMT1NFX0NBTEwQCQ==');
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
@$core.Deprecated('Use gameScoreDescriptor instead')
const GameScore$json = const {
  '1': 'GameScore',
  '2': const [
    const {'1': 'score', '3': 1, '4': 1, '5': 13, '10': 'score'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `GameScore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameScoreDescriptor = $convert.base64Decode('CglHYW1lU2NvcmUSFAoFc2NvcmUYASABKA1SBXNjb3JlEjgKCXRpbWVzdGFtcBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use gamePlayerDescriptor instead')
const GamePlayer$json = const {
  '1': 'GamePlayer',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.GameScore', '10': 'scores'},
    const {'1': 'kicked', '3': 3, '4': 1, '5': 8, '10': 'kicked'},
  ],
};

/// Descriptor for `GamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gamePlayerDescriptor = $convert.base64Decode('CgpHYW1lUGxheWVyEhIKBG5hbWUYASABKAlSBG5hbWUSIgoGc2NvcmVzGAIgAygLMgouR2FtZVNjb3JlUgZzY29yZXMSFgoGa2lja2VkGAMgASgIUgZraWNrZWQ=');
@$core.Deprecated('Use gameAwardDescriptor instead')
const GameAward$json = const {
  '1': 'GameAward',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.GameAwardType', '10': 'type'},
    const {'1': 'receipient', '3': 2, '4': 1, '5': 9, '10': 'receipient'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GameAward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameAwardDescriptor = $convert.base64Decode('CglHYW1lQXdhcmQSIgoEdHlwZRgBIAEoDjIOLkdhbWVBd2FyZFR5cGVSBHR5cGUSHgoKcmVjZWlwaWVudBgCIAEoCVIKcmVjZWlwaWVudBIUCgV2YWx1ZRgDIAEoCVIFdmFsdWUSEgoEbmFtZRgEIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use gameResolutionDescriptor instead')
const GameResolution$json = const {
  '1': 'GameResolution',
  '2': const [
    const {'1': 'finished_at', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'finishedAt'},
    const {'1': 'winner', '3': 2, '4': 1, '5': 9, '10': 'winner'},
    const {'1': 'awards', '3': 3, '4': 3, '5': 11, '6': '.GameAward', '10': 'awards'},
  ],
};

/// Descriptor for `GameResolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameResolutionDescriptor = $convert.base64Decode('Cg5HYW1lUmVzb2x1dGlvbhI7CgtmaW5pc2hlZF9hdBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmZpbmlzaGVkQXQSFgoGd2lubmVyGAIgASgJUgZ3aW5uZXISIgoGYXdhcmRzGAMgAygLMgouR2FtZUF3YXJkUgZhd2FyZHM=');
@$core.Deprecated('Use gameViewerDataPlayerDescriptor instead')
const GameViewerDataPlayer$json = const {
  '1': 'GameViewerDataPlayer',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'scores', '3': 2, '4': 3, '5': 13, '10': 'scores'},
    const {'1': 'total_scores', '3': 3, '4': 3, '5': 13, '10': 'totalScores'},
    const {'1': 'eliminated', '3': 4, '4': 1, '5': 8, '10': 'eliminated'},
  ],
};

/// Descriptor for `GameViewerDataPlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameViewerDataPlayerDescriptor = $convert.base64Decode('ChRHYW1lVmlld2VyRGF0YVBsYXllchISCgRuYW1lGAEgASgJUgRuYW1lEhYKBnNjb3JlcxgCIAMoDVIGc2NvcmVzEiEKDHRvdGFsX3Njb3JlcxgDIAMoDVILdG90YWxTY29yZXMSHgoKZWxpbWluYXRlZBgEIAEoCFIKZWxpbWluYXRlZA==');
@$core.Deprecated('Use gameViewerDataDescriptor instead')
const GameViewerData$json = const {
  '1': 'GameViewerData',
  '2': const [
    const {'1': 'players', '3': 1, '4': 3, '5': 11, '6': '.GameViewerDataPlayer', '10': 'players'},
    const {'1': 'current_player_name', '3': 2, '4': 1, '5': 9, '10': 'currentPlayerName'},
    const {'1': 'next_player_name', '3': 3, '4': 1, '5': 9, '10': 'nextPlayerName'},
    const {'1': 'current_round', '3': 4, '4': 1, '5': 13, '10': 'currentRound'},
  ],
};

/// Descriptor for `GameViewerData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameViewerDataDescriptor = $convert.base64Decode('Cg5HYW1lVmlld2VyRGF0YRIvCgdwbGF5ZXJzGAEgAygLMhUuR2FtZVZpZXdlckRhdGFQbGF5ZXJSB3BsYXllcnMSLgoTY3VycmVudF9wbGF5ZXJfbmFtZRgCIAEoCVIRY3VycmVudFBsYXllck5hbWUSKAoQbmV4dF9wbGF5ZXJfbmFtZRgDIAEoCVIObmV4dFBsYXllck5hbWUSIwoNY3VycmVudF9yb3VuZBgEIAEoDVIMY3VycmVudFJvdW5k');
@$core.Deprecated('Use gameDescriptor instead')
const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.GameConfig', '10': 'config'},
    const {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.GamePlayer', '10': 'players'},
    const {'1': 'resolution', '3': 3, '4': 1, '5': 11, '6': '.GameResolution', '10': 'resolution'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.GameStatus', '10': 'status'},
    const {'1': 'started_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
    const {'1': 'viewer_data', '3': 6, '4': 1, '5': 11, '6': '.GameViewerData', '10': 'viewerData'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode('CgRHYW1lEiMKBmNvbmZpZxgBIAEoCzILLkdhbWVDb25maWdSBmNvbmZpZxIlCgdwbGF5ZXJzGAIgAygLMgsuR2FtZVBsYXllclIHcGxheWVycxIvCgpyZXNvbHV0aW9uGAMgASgLMg8uR2FtZVJlc29sdXRpb25SCnJlc29sdXRpb24SIwoGc3RhdHVzGAQgASgOMgsuR2FtZVN0YXR1c1IGc3RhdHVzEjkKCnN0YXJ0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydGVkQXQSMAoLdmlld2VyX2RhdGEYBiABKAsyDy5HYW1lVmlld2VyRGF0YVIKdmlld2VyRGF0YQ==');
