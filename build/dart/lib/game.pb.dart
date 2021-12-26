///
//  Generated code. Do not modify.
//  source: lib/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'game.pbenum.dart';

export 'game.pbenum.dart';

class GameConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GameConfig', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zeros', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resetScore', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winningScore', $pb.PbFieldType.OU3)
    ..e<PlayerOrder>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerOrder', $pb.PbFieldType.OE, defaultOrMaker: PlayerOrder.USER_DEFINED, valueOf: PlayerOrder.valueOf, enumValues: PlayerOrder.values)
    ..hasRequiredFields = false
  ;

  GameConfig._() : super();
  factory GameConfig({
    $core.int? zeros,
    $core.int? resetScore,
    $core.int? winningScore,
    PlayerOrder? playerOrder,
  }) {
    final _result = create();
    if (zeros != null) {
      _result.zeros = zeros;
    }
    if (resetScore != null) {
      _result.resetScore = resetScore;
    }
    if (winningScore != null) {
      _result.winningScore = winningScore;
    }
    if (playerOrder != null) {
      _result.playerOrder = playerOrder;
    }
    return _result;
  }
  factory GameConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameConfig clone() => GameConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameConfig copyWith(void Function(GameConfig) updates) => super.copyWith((message) => updates(message as GameConfig)) as GameConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameConfig create() => GameConfig._();
  GameConfig createEmptyInstance() => create();
  static $pb.PbList<GameConfig> createRepeated() => $pb.PbList<GameConfig>();
  @$core.pragma('dart2js:noInline')
  static GameConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameConfig>(create);
  static GameConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get zeros => $_getIZ(0);
  @$pb.TagNumber(1)
  set zeros($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasZeros() => $_has(0);
  @$pb.TagNumber(1)
  void clearZeros() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get resetScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set resetScore($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResetScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearResetScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get winningScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set winningScore($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWinningScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearWinningScore() => clearField(3);

  @$pb.TagNumber(4)
  PlayerOrder get playerOrder => $_getN(3);
  @$pb.TagNumber(4)
  set playerOrder(PlayerOrder v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerOrder() => clearField(4);
}

class GamePlayer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GamePlayer', createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scores', $pb.PbFieldType.PU3)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kicked')
    ..hasRequiredFields = false
  ;

  GamePlayer._() : super();
  factory GamePlayer({
    $core.Iterable<$core.int>? scores,
    $core.bool? kicked,
  }) {
    final _result = create();
    if (scores != null) {
      _result.scores.addAll(scores);
    }
    if (kicked != null) {
      _result.kicked = kicked;
    }
    return _result;
  }
  factory GamePlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GamePlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GamePlayer clone() => GamePlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GamePlayer copyWith(void Function(GamePlayer) updates) => super.copyWith((message) => updates(message as GamePlayer)) as GamePlayer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GamePlayer create() => GamePlayer._();
  GamePlayer createEmptyInstance() => create();
  static $pb.PbList<GamePlayer> createRepeated() => $pb.PbList<GamePlayer>();
  @$core.pragma('dart2js:noInline')
  static GamePlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GamePlayer>(create);
  static GamePlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get scores => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get kicked => $_getBF(1);
  @$pb.TagNumber(2)
  set kicked($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKicked() => $_has(1);
  @$pb.TagNumber(2)
  void clearKicked() => clearField(2);
}

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Game', createEmptyInstance: create)
    ..aOM<GameConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: GameConfig.create)
    ..m<$core.String, GamePlayer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', entryClassName: 'Game.PlayersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GamePlayer.create)
    ..hasRequiredFields = false
  ;

  Game._() : super();
  factory Game({
    GameConfig? config,
    $core.Map<$core.String, GamePlayer>? players,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    if (players != null) {
      _result.players.addAll(players);
    }
    return _result;
  }
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  Game createEmptyInstance() => create();
  static $pb.PbList<Game> createRepeated() => $pb.PbList<Game>();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  @$pb.TagNumber(1)
  GameConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(GameConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  GameConfig ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, GamePlayer> get players => $_getMap(1);
}

