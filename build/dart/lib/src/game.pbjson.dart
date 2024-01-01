//
//  Generated code. Do not modify.
//  source: src/game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use playerOrderDescriptor instead')
const PlayerOrder$json = {
  '1': 'PlayerOrder',
  '2': [
    {'1': 'USER_DEFINED', '2': 0},
    {'1': 'RANDOM', '2': 1},
  ],
};

/// Descriptor for `PlayerOrder`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playerOrderDescriptor = $convert.base64Decode(
    'CgtQbGF5ZXJPcmRlchIQCgxVU0VSX0RFRklORUQQABIKCgZSQU5ET00QAQ==');

@$core.Deprecated('Use gameStatusDescriptor instead')
const GameStatus$json = {
  '1': 'GameStatus',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PLAYING', '2': 1},
    {'1': 'PAUSED', '2': 2},
    {'1': 'FINISHED', '2': 3},
    {'1': 'CANCELED', '2': 4},
  ],
};

/// Descriptor for `GameStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameStatusDescriptor = $convert.base64Decode(
    'CgpHYW1lU3RhdHVzEgsKB1VOS05PV04QABILCgdQTEFZSU5HEAESCgoGUEFVU0VEEAISDAoIRk'
    'lOSVNIRUQQAxIMCghDQU5DRUxFRBAE');

@$core.Deprecated('Use gameAwardTypeDescriptor instead')
const GameAwardType$json = {
  '1': 'GameAwardType',
  '2': [
    {'1': 'SLOW_POKE', '2': 0},
    {'1': 'SHARP_SHOOTER', '2': 1},
    {'1': 'PEA_SHOOTER', '2': 2},
    {'1': 'TWELVIE', '2': 3},
    {'1': 'HIGH_ROLLER', '2': 4},
    {'1': 'ZEROS', '2': 5},
    {'1': 'RESETTER', '2': 6},
    {'1': 'SO_CLOSE', '2': 7},
    {'1': 'LOWEST_SCORE', '2': 8},
    {'1': 'CLOSE_CALL', '2': 9},
    {'1': 'DOMINATION', '2': 10},
    {'1': 'NO_MISSES', '2': 11},
    {'1': 'INSTANT_OUT', '2': 12},
    {'1': 'PERFECT_GAME', '2': 13},
    {'1': 'ALWAYS_IN_LEAD', '2': 14},
  ],
};

/// Descriptor for `GameAwardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameAwardTypeDescriptor = $convert.base64Decode(
    'Cg1HYW1lQXdhcmRUeXBlEg0KCVNMT1dfUE9LRRAAEhEKDVNIQVJQX1NIT09URVIQARIPCgtQRU'
    'FfU0hPT1RFUhACEgsKB1RXRUxWSUUQAxIPCgtISUdIX1JPTExFUhAEEgkKBVpFUk9TEAUSDAoI'
    'UkVTRVRURVIQBhIMCghTT19DTE9TRRAHEhAKDExPV0VTVF9TQ09SRRAIEg4KCkNMT1NFX0NBTE'
    'wQCRIOCgpET01JTkFUSU9OEAoSDQoJTk9fTUlTU0VTEAsSDwoLSU5TVEFOVF9PVVQQDBIQCgxQ'
    'RVJGRUNUX0dBTUUQDRISCg5BTFdBWVNfSU5fTEVBRBAO');

@$core.Deprecated('Use gameConfigDescriptor instead')
const GameConfig$json = {
  '1': 'GameConfig',
  '2': [
    {'1': 'zeros', '3': 1, '4': 1, '5': 17, '10': 'zeros'},
    {'1': 'reset_score', '3': 2, '4': 1, '5': 13, '10': 'resetScore'},
    {'1': 'winning_score', '3': 3, '4': 1, '5': 13, '10': 'winningScore'},
    {'1': 'player_order', '3': 4, '4': 1, '5': 14, '6': '.PlayerOrder', '10': 'playerOrder'},
  ],
};

/// Descriptor for `GameConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameConfigDescriptor = $convert.base64Decode(
    'CgpHYW1lQ29uZmlnEhQKBXplcm9zGAEgASgRUgV6ZXJvcxIfCgtyZXNldF9zY29yZRgCIAEoDV'
    'IKcmVzZXRTY29yZRIjCg13aW5uaW5nX3Njb3JlGAMgASgNUgx3aW5uaW5nU2NvcmUSLwoMcGxh'
    'eWVyX29yZGVyGAQgASgOMgwuUGxheWVyT3JkZXJSC3BsYXllck9yZGVy');

@$core.Deprecated('Use gameScoreDescriptor instead')
const GameScore$json = {
  '1': 'GameScore',
  '2': [
    {'1': 'score', '3': 1, '4': 1, '5': 13, '10': 'score'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `GameScore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameScoreDescriptor = $convert.base64Decode(
    'CglHYW1lU2NvcmUSFAoFc2NvcmUYASABKA1SBXNjb3JlEjgKCXRpbWVzdGFtcBgCIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcA==');

@$core.Deprecated('Use gamePlayerDescriptor instead')
const GamePlayer$json = {
  '1': 'GamePlayer',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name'},
    {'1': 'player_ref', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'playerRef'},
    {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.GameScore', '10': 'scores'},
    {'1': 'kicked', '3': 3, '4': 1, '5': 8, '10': 'kicked'},
  ],
  '8': [
    {'1': 'player'},
  ],
};

/// Descriptor for `GamePlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gamePlayerDescriptor = $convert.base64Decode(
    'CgpHYW1lUGxheWVyEhQKBG5hbWUYASABKAlIAFIEbmFtZRIfCgpwbGF5ZXJfcmVmGAQgASgJSA'
    'BSCXBsYXllclJlZhIiCgZzY29yZXMYAiADKAsyCi5HYW1lU2NvcmVSBnNjb3JlcxIWCgZraWNr'
    'ZWQYAyABKAhSBmtpY2tlZEIICgZwbGF5ZXI=');

@$core.Deprecated('Use gameAwardDescriptor instead')
const GameAward$json = {
  '1': 'GameAward',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.GameAwardType', '10': 'type'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {'1': 'priority', '3': 7, '4': 1, '5': 13, '10': 'priority'},
    {'1': 'emoji', '3': 6, '4': 1, '5': 9, '10': 'emoji'},
    {'1': 'receipient', '3': 2, '4': 1, '5': 9, '10': 'receipient'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GameAward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameAwardDescriptor = $convert.base64Decode(
    'CglHYW1lQXdhcmQSIgoEdHlwZRgBIAEoDjIOLkdhbWVBd2FyZFR5cGVSBHR5cGUSFAoFdmFsdW'
    'UYAyABKAlSBXZhbHVlEhoKCHByaW9yaXR5GAcgASgNUghwcmlvcml0eRIUCgVlbW9qaRgGIAEo'
    'CVIFZW1vamkSHgoKcmVjZWlwaWVudBgCIAEoCVIKcmVjZWlwaWVudBISCgRuYW1lGAQgASgJUg'
    'RuYW1lEiAKC2Rlc2NyaXB0aW9uGAUgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use gameResolutionDescriptor instead')
const GameResolution$json = {
  '1': 'GameResolution',
  '2': [
    {'1': 'finished_at', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'finishedAt'},
    {'1': 'winner', '3': 2, '4': 1, '5': 9, '10': 'winner'},
    {'1': 'awards', '3': 3, '4': 3, '5': 11, '6': '.GameAward', '10': 'awards'},
  ],
};

/// Descriptor for `GameResolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameResolutionDescriptor = $convert.base64Decode(
    'Cg5HYW1lUmVzb2x1dGlvbhI7CgtmaW5pc2hlZF9hdBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi'
    '5UaW1lc3RhbXBSCmZpbmlzaGVkQXQSFgoGd2lubmVyGAIgASgJUgZ3aW5uZXISIgoGYXdhcmRz'
    'GAMgAygLMgouR2FtZUF3YXJkUgZhd2FyZHM=');

@$core.Deprecated('Use gameViewerDataPlayerDescriptor instead')
const GameViewerDataPlayer$json = {
  '1': 'GameViewerDataPlayer',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'scores', '3': 2, '4': 3, '5': 13, '10': 'scores'},
    {'1': 'total_scores', '3': 3, '4': 3, '5': 13, '10': 'totalScores'},
    {'1': 'eliminated', '3': 4, '4': 1, '5': 8, '10': 'eliminated'},
  ],
};

/// Descriptor for `GameViewerDataPlayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameViewerDataPlayerDescriptor = $convert.base64Decode(
    'ChRHYW1lVmlld2VyRGF0YVBsYXllchISCgRuYW1lGAEgASgJUgRuYW1lEhYKBnNjb3JlcxgCIA'
    'MoDVIGc2NvcmVzEiEKDHRvdGFsX3Njb3JlcxgDIAMoDVILdG90YWxTY29yZXMSHgoKZWxpbWlu'
    'YXRlZBgEIAEoCFIKZWxpbWluYXRlZA==');

@$core.Deprecated('Use gameViewerDataDescriptor instead')
const GameViewerData$json = {
  '1': 'GameViewerData',
  '2': [
    {'1': 'players', '3': 1, '4': 3, '5': 11, '6': '.GameViewerDataPlayer', '10': 'players'},
    {'1': 'current_player_name', '3': 2, '4': 1, '5': 9, '10': 'currentPlayerName'},
    {'1': 'next_player_name', '3': 3, '4': 1, '5': 9, '10': 'nextPlayerName'},
    {'1': 'current_round', '3': 4, '4': 1, '5': 13, '10': 'currentRound'},
  ],
};

/// Descriptor for `GameViewerData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameViewerDataDescriptor = $convert.base64Decode(
    'Cg5HYW1lVmlld2VyRGF0YRIvCgdwbGF5ZXJzGAEgAygLMhUuR2FtZVZpZXdlckRhdGFQbGF5ZX'
    'JSB3BsYXllcnMSLgoTY3VycmVudF9wbGF5ZXJfbmFtZRgCIAEoCVIRY3VycmVudFBsYXllck5h'
    'bWUSKAoQbmV4dF9wbGF5ZXJfbmFtZRgDIAEoCVIObmV4dFBsYXllck5hbWUSIwoNY3VycmVudF'
    '9yb3VuZBgEIAEoDVIMY3VycmVudFJvdW5k');

@$core.Deprecated('Use gameShareDataDescriptor instead')
const GameShareData$json = {
  '1': 'GameShareData',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GameShareData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameShareDataDescriptor = $convert.base64Decode(
    'Cg1HYW1lU2hhcmVEYXRhEhAKA2tleRgBIAEoCVIDa2V5');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.GameConfig', '10': 'config'},
    {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.GamePlayer', '10': 'players'},
    {'1': 'resolution', '3': 3, '4': 1, '5': 11, '6': '.GameResolution', '10': 'resolution'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.GameStatus', '10': 'status'},
    {'1': 'started_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
    {'1': 'viewer_data', '3': 6, '4': 1, '5': 11, '6': '.GameViewerData', '10': 'viewerData'},
    {'1': 'share_data', '3': 7, '4': 1, '5': 11, '6': '.GameShareData', '10': 'shareData'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lEiMKBmNvbmZpZxgBIAEoCzILLkdhbWVDb25maWdSBmNvbmZpZxIlCgdwbGF5ZXJzGA'
    'IgAygLMgsuR2FtZVBsYXllclIHcGxheWVycxIvCgpyZXNvbHV0aW9uGAMgASgLMg8uR2FtZVJl'
    'c29sdXRpb25SCnJlc29sdXRpb24SIwoGc3RhdHVzGAQgASgOMgsuR2FtZVN0YXR1c1IGc3RhdH'
    'VzEjkKCnN0YXJ0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFy'
    'dGVkQXQSMAoLdmlld2VyX2RhdGEYBiABKAsyDy5HYW1lVmlld2VyRGF0YVIKdmlld2VyRGF0YR'
    'ItCgpzaGFyZV9kYXRhGAcgASgLMg4uR2FtZVNoYXJlRGF0YVIJc2hhcmVEYXRh');

