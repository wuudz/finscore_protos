//
//  Generated code. Do not modify.
//  source: src/game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PlayerOrder extends $pb.ProtobufEnum {
  static const PlayerOrder USER_DEFINED = PlayerOrder._(0, _omitEnumNames ? '' : 'USER_DEFINED');
  static const PlayerOrder RANDOM = PlayerOrder._(1, _omitEnumNames ? '' : 'RANDOM');

  static const $core.List<PlayerOrder> values = <PlayerOrder> [
    USER_DEFINED,
    RANDOM,
  ];

  static final $core.Map<$core.int, PlayerOrder> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlayerOrder? valueOf($core.int value) => _byValue[value];

  const PlayerOrder._($core.int v, $core.String n) : super(v, n);
}

class GameStatus extends $pb.ProtobufEnum {
  static const GameStatus UNKNOWN = GameStatus._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const GameStatus PLAYING = GameStatus._(1, _omitEnumNames ? '' : 'PLAYING');
  static const GameStatus PAUSED = GameStatus._(2, _omitEnumNames ? '' : 'PAUSED');
  static const GameStatus FINISHED = GameStatus._(3, _omitEnumNames ? '' : 'FINISHED');
  static const GameStatus CANCELED = GameStatus._(4, _omitEnumNames ? '' : 'CANCELED');

  static const $core.List<GameStatus> values = <GameStatus> [
    UNKNOWN,
    PLAYING,
    PAUSED,
    FINISHED,
    CANCELED,
  ];

  static final $core.Map<$core.int, GameStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameStatus? valueOf($core.int value) => _byValue[value];

  const GameStatus._($core.int v, $core.String n) : super(v, n);
}

class GameAwardType extends $pb.ProtobufEnum {
  static const GameAwardType TIME_AVERAGE_HIGHEST = GameAwardType._(0, _omitEnumNames ? '' : 'TIME_AVERAGE_HIGHEST');
  static const GameAwardType TIME_AVERAGE_LOWEST = GameAwardType._(16, _omitEnumNames ? '' : 'TIME_AVERAGE_LOWEST');
  static const GameAwardType ZERO_COUNT_ZERO = GameAwardType._(11, _omitEnumNames ? '' : 'ZERO_COUNT_ZERO');
  static const GameAwardType ZERO_COUNT_LOWEST = GameAwardType._(1, _omitEnumNames ? '' : 'ZERO_COUNT_LOWEST');
  static const GameAwardType ZERO_COUNT_HIGHEST = GameAwardType._(5, _omitEnumNames ? '' : 'ZERO_COUNT_HIGHEST');
  static const GameAwardType INSTANT_OUT = GameAwardType._(12, _omitEnumNames ? '' : 'INSTANT_OUT');
  static const GameAwardType SCORE_AVERAGE_LOWEST = GameAwardType._(2, _omitEnumNames ? '' : 'SCORE_AVERAGE_LOWEST');
  static const GameAwardType SCORE_AVERAGE_HIGHEST = GameAwardType._(4, _omitEnumNames ? '' : 'SCORE_AVERAGE_HIGHEST');
  static const GameAwardType SCORE_TOTAL_2ND_HIGHEST = GameAwardType._(7, _omitEnumNames ? '' : 'SCORE_TOTAL_2ND_HIGHEST');
  static const GameAwardType SCORE_TOTAL_LOWEST = GameAwardType._(8, _omitEnumNames ? '' : 'SCORE_TOTAL_LOWEST');
  static const GameAwardType SCORE_ROUND_SAME_CONSECUTIVE = GameAwardType._(15, _omitEnumNames ? '' : 'SCORE_ROUND_SAME_CONSECUTIVE');
  static const GameAwardType SCORE_ROUND_1_TWELVE = GameAwardType._(19, _omitEnumNames ? '' : 'SCORE_ROUND_1_TWELVE');
  static const GameAwardType SCORE_ROUND_1_ZERO = GameAwardType._(22, _omitEnumNames ? '' : 'SCORE_ROUND_1_ZERO');
  static const GameAwardType SCORE_CHAIN_BREAKER = GameAwardType._(20, _omitEnumNames ? '' : 'SCORE_CHAIN_BREAKER');
  static const GameAwardType SCORE_STREAK_2_1S = GameAwardType._(21, _omitEnumNames ? '' : 'SCORE_STREAK_2_1S');
  static const GameAwardType TWELVE_COUNT_HIGHEST = GameAwardType._(3, _omitEnumNames ? '' : 'TWELVE_COUNT_HIGHEST');
  static const GameAwardType RESET_COUNT_HIGHEST = GameAwardType._(6, _omitEnumNames ? '' : 'RESET_COUNT_HIGHEST');
  static const GameAwardType DANGER_COUNT_HIGHEST = GameAwardType._(9, _omitEnumNames ? '' : 'DANGER_COUNT_HIGHEST');
  static const GameAwardType POSITION_FIRST_TO_LAST = GameAwardType._(18, _omitEnumNames ? '' : 'POSITION_FIRST_TO_LAST');
  static const GameAwardType DOMINATION = GameAwardType._(10, _omitEnumNames ? '' : 'DOMINATION');
  static const GameAwardType ALWAYS_IN_LEAD = GameAwardType._(14, _omitEnumNames ? '' : 'ALWAYS_IN_LEAD');
  static const GameAwardType POSITION_LAST_TO_WIN = GameAwardType._(17, _omitEnumNames ? '' : 'POSITION_LAST_TO_WIN');
  static const GameAwardType PERFECT_GAME = GameAwardType._(13, _omitEnumNames ? '' : 'PERFECT_GAME');

  static const $core.List<GameAwardType> values = <GameAwardType> [
    TIME_AVERAGE_HIGHEST,
    TIME_AVERAGE_LOWEST,
    ZERO_COUNT_ZERO,
    ZERO_COUNT_LOWEST,
    ZERO_COUNT_HIGHEST,
    INSTANT_OUT,
    SCORE_AVERAGE_LOWEST,
    SCORE_AVERAGE_HIGHEST,
    SCORE_TOTAL_2ND_HIGHEST,
    SCORE_TOTAL_LOWEST,
    SCORE_ROUND_SAME_CONSECUTIVE,
    SCORE_ROUND_1_TWELVE,
    SCORE_ROUND_1_ZERO,
    SCORE_CHAIN_BREAKER,
    SCORE_STREAK_2_1S,
    TWELVE_COUNT_HIGHEST,
    RESET_COUNT_HIGHEST,
    DANGER_COUNT_HIGHEST,
    POSITION_FIRST_TO_LAST,
    DOMINATION,
    ALWAYS_IN_LEAD,
    POSITION_LAST_TO_WIN,
    PERFECT_GAME,
  ];

  static final $core.Map<$core.int, GameAwardType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameAwardType? valueOf($core.int value) => _byValue[value];

  const GameAwardType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
