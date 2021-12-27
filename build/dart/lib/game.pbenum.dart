///
//  Generated code. Do not modify.
//  source: lib/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PlayerOrder extends $pb.ProtobufEnum {
  static const PlayerOrder USER_DEFINED = PlayerOrder._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'USER_DEFINED');
  static const PlayerOrder RANDOM = PlayerOrder._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RANDOM');

  static const $core.List<PlayerOrder> values = <PlayerOrder> [
    USER_DEFINED,
    RANDOM,
  ];

  static final $core.Map<$core.int, PlayerOrder> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlayerOrder? valueOf($core.int value) => _byValue[value];

  const PlayerOrder._($core.int v, $core.String n) : super(v, n);
}

class GameStatus extends $pb.ProtobufEnum {
  static const GameStatus UNKNOWN = GameStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const GameStatus PLAYING = GameStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PLAYING');
  static const GameStatus PAUSED = GameStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAUSED');
  static const GameStatus FINISHED = GameStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINISHED');
  static const GameStatus CANCELED = GameStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCELED');

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

