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
    {'1': 'TIME_AVERAGE_HIGHEST', '2': 0},
    {'1': 'TIME_AVERAGE_LOWEST', '2': 16},
    {'1': 'ZERO_COUNT_ZERO', '2': 11},
    {'1': 'ZERO_COUNT_LOWEST', '2': 1},
    {'1': 'ZERO_COUNT_HIGHEST', '2': 5},
    {'1': 'INSTANT_OUT', '2': 12},
    {'1': 'BREAK_TWELVE', '2': 19},
    {'1': 'BREAK_ZERO', '2': 22},
    {'1': 'SCORE_AVERAGE_LOWEST', '2': 2},
    {'1': 'SCORE_AVERAGE_HIGHEST', '2': 4},
    {'1': 'SCORE_TOTAL_2ND_HIGHEST', '2': 7},
    {'1': 'SCORE_TOTAL_LOWEST', '2': 8},
    {'1': 'SCORE_CHAIN_BREAKER', '2': 20},
    {'1': 'SCORE_STREAK_TWO_1S', '2': 21},
    {'1': 'SCORE_STREAK_SAME', '2': 15},
    {'1': 'TWELVE_COUNT_HIGHEST', '2': 3},
    {'1': 'RESET_COUNT_HIGHEST', '2': 6},
    {'1': 'DANGER_COUNT_HIGHEST', '2': 9},
    {'1': 'DANGER_THEN_TWELVE', '2': 23},
    {'1': 'POSITION_FIRST_TO_LAST', '2': 18},
    {'1': 'WIN_NONE_IN_RANGE', '2': 10},
    {'1': 'WIN_MINIMUM_ROUNDS', '2': 13},
    {'1': 'WIN_FROM_EARLY_LAST_POSITION', '2': 17},
    {'1': 'WIN_ALWAYS_FIRST_POSITION', '2': 14},
    {'1': 'WIN_AFTER_RESET', '2': 25},
    {'1': 'WIN_WHILE_IN_DANGER', '2': 24},
    {'1': 'WIN_WITH_SCORE_ONE', '2': 26},
  ],
};

/// Descriptor for `GameAwardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameAwardTypeDescriptor = $convert.base64Decode(
    'Cg1HYW1lQXdhcmRUeXBlEhgKFFRJTUVfQVZFUkFHRV9ISUdIRVNUEAASFwoTVElNRV9BVkVSQU'
    'dFX0xPV0VTVBAQEhMKD1pFUk9fQ09VTlRfWkVSTxALEhUKEVpFUk9fQ09VTlRfTE9XRVNUEAES'
    'FgoSWkVST19DT1VOVF9ISUdIRVNUEAUSDwoLSU5TVEFOVF9PVVQQDBIQCgxCUkVBS19UV0VMVk'
    'UQExIOCgpCUkVBS19aRVJPEBYSGAoUU0NPUkVfQVZFUkFHRV9MT1dFU1QQAhIZChVTQ09SRV9B'
    'VkVSQUdFX0hJR0hFU1QQBBIbChdTQ09SRV9UT1RBTF8yTkRfSElHSEVTVBAHEhYKElNDT1JFX1'
    'RPVEFMX0xPV0VTVBAIEhcKE1NDT1JFX0NIQUlOX0JSRUFLRVIQFBIXChNTQ09SRV9TVFJFQUtf'
    'VFdPXzFTEBUSFQoRU0NPUkVfU1RSRUFLX1NBTUUQDxIYChRUV0VMVkVfQ09VTlRfSElHSEVTVB'
    'ADEhcKE1JFU0VUX0NPVU5UX0hJR0hFU1QQBhIYChREQU5HRVJfQ09VTlRfSElHSEVTVBAJEhYK'
    'EkRBTkdFUl9USEVOX1RXRUxWRRAXEhoKFlBPU0lUSU9OX0ZJUlNUX1RPX0xBU1QQEhIVChFXSU'
    '5fTk9ORV9JTl9SQU5HRRAKEhYKEldJTl9NSU5JTVVNX1JPVU5EUxANEiAKHFdJTl9GUk9NX0VB'
    'UkxZX0xBU1RfUE9TSVRJT04QERIdChlXSU5fQUxXQVlTX0ZJUlNUX1BPU0lUSU9OEA4SEwoPV0'
    'lOX0FGVEVSX1JFU0VUEBkSFwoTV0lOX1dISUxFX0lOX0RBTkdFUhAYEhYKEldJTl9XSVRIX1ND'
    'T1JFX09ORRAa');

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
    {'1': 'text_color', '3': 8, '4': 1, '5': 9, '10': 'textColor'},
    {'1': 'background_color', '3': 9, '4': 1, '5': 9, '10': 'backgroundColor'},
    {'1': 'receipient', '3': 2, '4': 1, '5': 9, '10': 'receipient'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GameAward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameAwardDescriptor = $convert.base64Decode(
    'CglHYW1lQXdhcmQSIgoEdHlwZRgBIAEoDjIOLkdhbWVBd2FyZFR5cGVSBHR5cGUSFAoFdmFsdW'
    'UYAyABKAlSBXZhbHVlEhoKCHByaW9yaXR5GAcgASgNUghwcmlvcml0eRIUCgVlbW9qaRgGIAEo'
    'CVIFZW1vamkSHQoKdGV4dF9jb2xvchgIIAEoCVIJdGV4dENvbG9yEikKEGJhY2tncm91bmRfY2'
    '9sb3IYCSABKAlSD2JhY2tncm91bmRDb2xvchIeCgpyZWNlaXBpZW50GAIgASgJUgpyZWNlaXBp'
    'ZW50EhIKBG5hbWUYBCABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW'
    '9u');

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

