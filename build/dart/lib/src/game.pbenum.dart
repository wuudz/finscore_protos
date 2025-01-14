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
  static const GameAwardType BREAK_TWELVE = GameAwardType._(19, _omitEnumNames ? '' : 'BREAK_TWELVE');
  static const GameAwardType BREAK_ZERO = GameAwardType._(22, _omitEnumNames ? '' : 'BREAK_ZERO');
  static const GameAwardType SCORE_AVERAGE_LOWEST = GameAwardType._(2, _omitEnumNames ? '' : 'SCORE_AVERAGE_LOWEST');
  static const GameAwardType SCORE_AVERAGE_HIGHEST = GameAwardType._(4, _omitEnumNames ? '' : 'SCORE_AVERAGE_HIGHEST');
  static const GameAwardType SCORE_TOTAL_2ND_HIGHEST = GameAwardType._(7, _omitEnumNames ? '' : 'SCORE_TOTAL_2ND_HIGHEST');
  static const GameAwardType SCORE_TOTAL_LOWEST = GameAwardType._(8, _omitEnumNames ? '' : 'SCORE_TOTAL_LOWEST');
  static const GameAwardType SCORE_CHAIN_BREAKER = GameAwardType._(20, _omitEnumNames ? '' : 'SCORE_CHAIN_BREAKER');
  static const GameAwardType SCORE_STREAK_TWO_1S = GameAwardType._(21, _omitEnumNames ? '' : 'SCORE_STREAK_TWO_1S');
  static const GameAwardType SCORE_STREAK_SAME = GameAwardType._(15, _omitEnumNames ? '' : 'SCORE_STREAK_SAME');
  static const GameAwardType TWELVE_COUNT_HIGHEST = GameAwardType._(3, _omitEnumNames ? '' : 'TWELVE_COUNT_HIGHEST');
  static const GameAwardType RESET_COUNT_HIGHEST = GameAwardType._(6, _omitEnumNames ? '' : 'RESET_COUNT_HIGHEST');
  static const GameAwardType DANGER_COUNT_HIGHEST = GameAwardType._(9, _omitEnumNames ? '' : 'DANGER_COUNT_HIGHEST');
  static const GameAwardType DANGER_THEN_TWELVE = GameAwardType._(23, _omitEnumNames ? '' : 'DANGER_THEN_TWELVE');
  static const GameAwardType POSITION_FIRST_TO_LAST = GameAwardType._(18, _omitEnumNames ? '' : 'POSITION_FIRST_TO_LAST');
  static const GameAwardType WIN_NONE_IN_RANGE = GameAwardType._(10, _omitEnumNames ? '' : 'WIN_NONE_IN_RANGE');
  static const GameAwardType WIN_MINIMUM_ROUNDS = GameAwardType._(13, _omitEnumNames ? '' : 'WIN_MINIMUM_ROUNDS');
  static const GameAwardType WIN_FROM_EARLY_LAST_POSITION = GameAwardType._(17, _omitEnumNames ? '' : 'WIN_FROM_EARLY_LAST_POSITION');
  static const GameAwardType WIN_ALWAYS_FIRST_POSITION = GameAwardType._(14, _omitEnumNames ? '' : 'WIN_ALWAYS_FIRST_POSITION');
  static const GameAwardType WIN_AFTER_RESET = GameAwardType._(25, _omitEnumNames ? '' : 'WIN_AFTER_RESET');
  static const GameAwardType WIN_WHILE_IN_DANGER = GameAwardType._(24, _omitEnumNames ? '' : 'WIN_WHILE_IN_DANGER');
  static const GameAwardType WIN_WITH_SCORE_ONE = GameAwardType._(26, _omitEnumNames ? '' : 'WIN_WITH_SCORE_ONE');

  static const $core.List<GameAwardType> values = <GameAwardType> [
    TIME_AVERAGE_HIGHEST,
    TIME_AVERAGE_LOWEST,
    ZERO_COUNT_ZERO,
    ZERO_COUNT_LOWEST,
    ZERO_COUNT_HIGHEST,
    INSTANT_OUT,
    BREAK_TWELVE,
    BREAK_ZERO,
    SCORE_AVERAGE_LOWEST,
    SCORE_AVERAGE_HIGHEST,
    SCORE_TOTAL_2ND_HIGHEST,
    SCORE_TOTAL_LOWEST,
    SCORE_CHAIN_BREAKER,
    SCORE_STREAK_TWO_1S,
    SCORE_STREAK_SAME,
    TWELVE_COUNT_HIGHEST,
    RESET_COUNT_HIGHEST,
    DANGER_COUNT_HIGHEST,
    DANGER_THEN_TWELVE,
    POSITION_FIRST_TO_LAST,
    WIN_NONE_IN_RANGE,
    WIN_MINIMUM_ROUNDS,
    WIN_FROM_EARLY_LAST_POSITION,
    WIN_ALWAYS_FIRST_POSITION,
    WIN_AFTER_RESET,
    WIN_WHILE_IN_DANGER,
    WIN_WITH_SCORE_ONE,
  ];

  static final $core.Map<$core.int, GameAwardType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameAwardType? valueOf($core.int value) => _byValue[value];

  const GameAwardType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
