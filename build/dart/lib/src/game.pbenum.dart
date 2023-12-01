//
//  Generated code. Do not modify.
//  source: src/game.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
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
  static const GameAwardType SLOW_POKE = GameAwardType._(0, _omitEnumNames ? '' : 'SLOW_POKE');
  static const GameAwardType SHARP_SHOOTER = GameAwardType._(1, _omitEnumNames ? '' : 'SHARP_SHOOTER');
  static const GameAwardType PEA_SHOOTER = GameAwardType._(2, _omitEnumNames ? '' : 'PEA_SHOOTER');
  static const GameAwardType TWELVIE = GameAwardType._(3, _omitEnumNames ? '' : 'TWELVIE');
  static const GameAwardType HIGH_ROLLER = GameAwardType._(4, _omitEnumNames ? '' : 'HIGH_ROLLER');
  static const GameAwardType ZEROS = GameAwardType._(5, _omitEnumNames ? '' : 'ZEROS');
  static const GameAwardType RESETTER = GameAwardType._(6, _omitEnumNames ? '' : 'RESETTER');
  static const GameAwardType SO_CLOSE = GameAwardType._(7, _omitEnumNames ? '' : 'SO_CLOSE');
  static const GameAwardType LOWEST_SCORE = GameAwardType._(8, _omitEnumNames ? '' : 'LOWEST_SCORE');
  static const GameAwardType CLOSE_CALL = GameAwardType._(9, _omitEnumNames ? '' : 'CLOSE_CALL');

  static const $core.List<GameAwardType> values = <GameAwardType> [
    SLOW_POKE,
    SHARP_SHOOTER,
    PEA_SHOOTER,
    TWELVIE,
    HIGH_ROLLER,
    ZEROS,
    RESETTER,
    SO_CLOSE,
    LOWEST_SCORE,
    CLOSE_CALL,
  ];

  static final $core.Map<$core.int, GameAwardType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameAwardType? valueOf($core.int value) => _byValue[value];

  const GameAwardType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
