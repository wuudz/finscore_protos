///
//  Generated code. Do not modify.
//  source: lib/game_history.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GameHistoryEvent extends $pb.ProtobufEnum {
  static const GameHistoryEvent SCORE = GameHistoryEvent._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCORE');
  static const GameHistoryEvent START = GameHistoryEvent._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'START');
  static const GameHistoryEvent UNDO = GameHistoryEvent._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNDO');
  static const GameHistoryEvent END = GameHistoryEvent._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END');

  static const $core.List<GameHistoryEvent> values = <GameHistoryEvent> [
    SCORE,
    START,
    UNDO,
    END,
  ];

  static final $core.Map<$core.int, GameHistoryEvent> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameHistoryEvent? valueOf($core.int value) => _byValue[value];

  const GameHistoryEvent._($core.int v, $core.String n) : super(v, n);
}

