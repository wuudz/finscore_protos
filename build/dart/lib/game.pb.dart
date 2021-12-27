///
//  Generated code. Do not modify.
//  source: lib/game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

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

class GameScore extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GameScore', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.OU3)
    ..aOM<$0.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  GameScore._() : super();
  factory GameScore({
    $core.int? score,
    $0.Timestamp? timestamp,
  }) {
    final _result = create();
    if (score != null) {
      _result.score = score;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory GameScore.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameScore.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameScore clone() => GameScore()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameScore copyWith(void Function(GameScore) updates) => super.copyWith((message) => updates(message as GameScore)) as GameScore; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameScore create() => GameScore._();
  GameScore createEmptyInstance() => create();
  static $pb.PbList<GameScore> createRepeated() => $pb.PbList<GameScore>();
  @$core.pragma('dart2js:noInline')
  static GameScore getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameScore>(create);
  static GameScore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get score => $_getIZ(0);
  @$pb.TagNumber(1)
  set score($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get timestamp => $_getN(1);
  @$pb.TagNumber(2)
  set timestamp($0.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureTimestamp() => $_ensure(1);
}

class GamePlayer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GamePlayer', createEmptyInstance: create)
    ..pc<GameScore>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scores', $pb.PbFieldType.PM, subBuilder: GameScore.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kicked')
    ..hasRequiredFields = false
  ;

  GamePlayer._() : super();
  factory GamePlayer({
    $core.Iterable<GameScore>? scores,
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
  $core.List<GameScore> get scores => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get kicked => $_getBF(1);
  @$pb.TagNumber(2)
  set kicked($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKicked() => $_has(1);
  @$pb.TagNumber(2)
  void clearKicked() => clearField(2);
}

class GameAward extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GameAward', createEmptyInstance: create)
    ..e<GameAwardType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GameAwardType.SLOW_POKE, valueOf: GameAwardType.valueOf, enumValues: GameAwardType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receipient')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  GameAward._() : super();
  factory GameAward({
    GameAwardType? type,
    $core.String? receipient,
    $core.String? value,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (receipient != null) {
      _result.receipient = receipient;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GameAward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameAward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameAward clone() => GameAward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameAward copyWith(void Function(GameAward) updates) => super.copyWith((message) => updates(message as GameAward)) as GameAward; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameAward create() => GameAward._();
  GameAward createEmptyInstance() => create();
  static $pb.PbList<GameAward> createRepeated() => $pb.PbList<GameAward>();
  @$core.pragma('dart2js:noInline')
  static GameAward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameAward>(create);
  static GameAward? _defaultInstance;

  @$pb.TagNumber(1)
  GameAwardType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GameAwardType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get receipient => $_getSZ(1);
  @$pb.TagNumber(2)
  set receipient($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceipient() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class GameResolution extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GameResolution', createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finishedAt', protoName: 'finishedAt', subBuilder: $0.Timestamp.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winner')
    ..pc<GameAward>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'awards', $pb.PbFieldType.PM, subBuilder: GameAward.create)
    ..hasRequiredFields = false
  ;

  GameResolution._() : super();
  factory GameResolution({
    $0.Timestamp? finishedAt,
    $core.String? winner,
    $core.Iterable<GameAward>? awards,
  }) {
    final _result = create();
    if (finishedAt != null) {
      _result.finishedAt = finishedAt;
    }
    if (winner != null) {
      _result.winner = winner;
    }
    if (awards != null) {
      _result.awards.addAll(awards);
    }
    return _result;
  }
  factory GameResolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameResolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameResolution clone() => GameResolution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameResolution copyWith(void Function(GameResolution) updates) => super.copyWith((message) => updates(message as GameResolution)) as GameResolution; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameResolution create() => GameResolution._();
  GameResolution createEmptyInstance() => create();
  static $pb.PbList<GameResolution> createRepeated() => $pb.PbList<GameResolution>();
  @$core.pragma('dart2js:noInline')
  static GameResolution getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameResolution>(create);
  static GameResolution? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get finishedAt => $_getN(0);
  @$pb.TagNumber(1)
  set finishedAt($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinishedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinishedAt() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureFinishedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get winner => $_getSZ(1);
  @$pb.TagNumber(2)
  set winner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWinner() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinner() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<GameAward> get awards => $_getList(2);
}

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Game', createEmptyInstance: create)
    ..aOM<GameConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: GameConfig.create)
    ..m<$core.String, GamePlayer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', entryClassName: 'Game.PlayersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GamePlayer.create)
    ..aOM<GameResolution>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolution', subBuilder: GameResolution.create)
    ..e<GameStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: GameStatus.UNKNOWN, valueOf: GameStatus.valueOf, enumValues: GameStatus.values)
    ..aOM<$0.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Game._() : super();
  factory Game({
    GameConfig? config,
    $core.Map<$core.String, GamePlayer>? players,
    GameResolution? resolution,
    GameStatus? status,
    $0.Timestamp? startedAt,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    if (players != null) {
      _result.players.addAll(players);
    }
    if (resolution != null) {
      _result.resolution = resolution;
    }
    if (status != null) {
      _result.status = status;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
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

  @$pb.TagNumber(3)
  GameResolution get resolution => $_getN(2);
  @$pb.TagNumber(3)
  set resolution(GameResolution v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResolution() => $_has(2);
  @$pb.TagNumber(3)
  void clearResolution() => clearField(3);
  @$pb.TagNumber(3)
  GameResolution ensureResolution() => $_ensure(2);

  @$pb.TagNumber(4)
  GameStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(GameStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get startedAt => $_getN(4);
  @$pb.TagNumber(5)
  set startedAt($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartedAt() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureStartedAt() => $_ensure(4);
}

