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

import '../google/protobuf/timestamp.pb.dart' as $0;
import 'game.pbenum.dart';

export 'game.pbenum.dart';

class GameConfig extends $pb.GeneratedMessage {
  factory GameConfig({
    $core.int? zeros,
    $core.int? resetScore,
    $core.int? winningScore,
    PlayerOrder? playerOrder,
  }) {
    final $result = create();
    if (zeros != null) {
      $result.zeros = zeros;
    }
    if (resetScore != null) {
      $result.resetScore = resetScore;
    }
    if (winningScore != null) {
      $result.winningScore = winningScore;
    }
    if (playerOrder != null) {
      $result.playerOrder = playerOrder;
    }
    return $result;
  }
  GameConfig._() : super();
  factory GameConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameConfig', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'zeros', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'resetScore', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'winningScore', $pb.PbFieldType.OU3)
    ..e<PlayerOrder>(4, _omitFieldNames ? '' : 'playerOrder', $pb.PbFieldType.OE, defaultOrMaker: PlayerOrder.USER_DEFINED, valueOf: PlayerOrder.valueOf, enumValues: PlayerOrder.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameConfig clone() => GameConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameConfig copyWith(void Function(GameConfig) updates) => super.copyWith((message) => updates(message as GameConfig)) as GameConfig;

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
  set zeros($core.int v) { $_setSignedInt32(0, v); }
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
  factory GameScore({
    $core.int? score,
    $0.Timestamp? timestamp,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  GameScore._() : super();
  factory GameScore.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameScore.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameScore', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OU3)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'timestamp', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameScore clone() => GameScore()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameScore copyWith(void Function(GameScore) updates) => super.copyWith((message) => updates(message as GameScore)) as GameScore;

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

enum GamePlayer_Player {
  name, 
  playerRef, 
  notSet
}

class GamePlayer extends $pb.GeneratedMessage {
  factory GamePlayer({
    $core.String? name,
    $core.Iterable<GameScore>? scores,
    $core.bool? kicked,
    $core.String? playerRef,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (scores != null) {
      $result.scores.addAll(scores);
    }
    if (kicked != null) {
      $result.kicked = kicked;
    }
    if (playerRef != null) {
      $result.playerRef = playerRef;
    }
    return $result;
  }
  GamePlayer._() : super();
  factory GamePlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GamePlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GamePlayer_Player> _GamePlayer_PlayerByTag = {
    1 : GamePlayer_Player.name,
    4 : GamePlayer_Player.playerRef,
    0 : GamePlayer_Player.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GamePlayer', createEmptyInstance: create)
    ..oo(0, [1, 4])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<GameScore>(2, _omitFieldNames ? '' : 'scores', $pb.PbFieldType.PM, subBuilder: GameScore.create)
    ..aOB(3, _omitFieldNames ? '' : 'kicked')
    ..aOS(4, _omitFieldNames ? '' : 'playerRef')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GamePlayer clone() => GamePlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GamePlayer copyWith(void Function(GamePlayer) updates) => super.copyWith((message) => updates(message as GamePlayer)) as GamePlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GamePlayer create() => GamePlayer._();
  GamePlayer createEmptyInstance() => create();
  static $pb.PbList<GamePlayer> createRepeated() => $pb.PbList<GamePlayer>();
  @$core.pragma('dart2js:noInline')
  static GamePlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GamePlayer>(create);
  static GamePlayer? _defaultInstance;

  GamePlayer_Player whichPlayer() => _GamePlayer_PlayerByTag[$_whichOneof(0)]!;
  void clearPlayer() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GameScore> get scores => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get kicked => $_getBF(2);
  @$pb.TagNumber(3)
  set kicked($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKicked() => $_has(2);
  @$pb.TagNumber(3)
  void clearKicked() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get playerRef => $_getSZ(3);
  @$pb.TagNumber(4)
  set playerRef($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerRef() => clearField(4);
}

class GameAward extends $pb.GeneratedMessage {
  factory GameAward({
    GameAwardType? type,
    $core.String? receipient,
    $core.String? value,
    $core.String? name,
    $core.String? description,
    $core.String? emoji,
    $core.int? priority,
    $core.String? textColor,
    $core.String? backgroundColor,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (receipient != null) {
      $result.receipient = receipient;
    }
    if (value != null) {
      $result.value = value;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (emoji != null) {
      $result.emoji = emoji;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (textColor != null) {
      $result.textColor = textColor;
    }
    if (backgroundColor != null) {
      $result.backgroundColor = backgroundColor;
    }
    return $result;
  }
  GameAward._() : super();
  factory GameAward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameAward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameAward', createEmptyInstance: create)
    ..e<GameAwardType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GameAwardType.TIME_AVERAGE_LOWEST, valueOf: GameAwardType.valueOf, enumValues: GameAwardType.values)
    ..aOS(2, _omitFieldNames ? '' : 'receipient')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'emoji')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'textColor')
    ..aOS(9, _omitFieldNames ? '' : 'backgroundColor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameAward clone() => GameAward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameAward copyWith(void Function(GameAward) updates) => super.copyWith((message) => updates(message as GameAward)) as GameAward;

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

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get emoji => $_getSZ(5);
  @$pb.TagNumber(6)
  set emoji($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmoji() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmoji() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get priority => $_getIZ(6);
  @$pb.TagNumber(7)
  set priority($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriority() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriority() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get textColor => $_getSZ(7);
  @$pb.TagNumber(8)
  set textColor($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTextColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearTextColor() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get backgroundColor => $_getSZ(8);
  @$pb.TagNumber(9)
  set backgroundColor($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBackgroundColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackgroundColor() => clearField(9);
}

class GameResolution extends $pb.GeneratedMessage {
  factory GameResolution({
    $0.Timestamp? finishedAt,
    $core.String? winner,
    $core.Iterable<GameAward>? awards,
  }) {
    final $result = create();
    if (finishedAt != null) {
      $result.finishedAt = finishedAt;
    }
    if (winner != null) {
      $result.winner = winner;
    }
    if (awards != null) {
      $result.awards.addAll(awards);
    }
    return $result;
  }
  GameResolution._() : super();
  factory GameResolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameResolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameResolution', createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'finishedAt', subBuilder: $0.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'winner')
    ..pc<GameAward>(3, _omitFieldNames ? '' : 'awards', $pb.PbFieldType.PM, subBuilder: GameAward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameResolution clone() => GameResolution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameResolution copyWith(void Function(GameResolution) updates) => super.copyWith((message) => updates(message as GameResolution)) as GameResolution;

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

class GameViewerDataPlayer extends $pb.GeneratedMessage {
  factory GameViewerDataPlayer({
    $core.String? name,
    $core.Iterable<$core.int>? scores,
    $core.Iterable<$core.int>? totalScores,
    $core.bool? eliminated,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (scores != null) {
      $result.scores.addAll(scores);
    }
    if (totalScores != null) {
      $result.totalScores.addAll(totalScores);
    }
    if (eliminated != null) {
      $result.eliminated = eliminated;
    }
    return $result;
  }
  GameViewerDataPlayer._() : super();
  factory GameViewerDataPlayer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameViewerDataPlayer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameViewerDataPlayer', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'scores', $pb.PbFieldType.KU3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'totalScores', $pb.PbFieldType.KU3)
    ..aOB(4, _omitFieldNames ? '' : 'eliminated')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameViewerDataPlayer clone() => GameViewerDataPlayer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameViewerDataPlayer copyWith(void Function(GameViewerDataPlayer) updates) => super.copyWith((message) => updates(message as GameViewerDataPlayer)) as GameViewerDataPlayer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameViewerDataPlayer create() => GameViewerDataPlayer._();
  GameViewerDataPlayer createEmptyInstance() => create();
  static $pb.PbList<GameViewerDataPlayer> createRepeated() => $pb.PbList<GameViewerDataPlayer>();
  @$core.pragma('dart2js:noInline')
  static GameViewerDataPlayer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameViewerDataPlayer>(create);
  static GameViewerDataPlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get scores => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get totalScores => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get eliminated => $_getBF(3);
  @$pb.TagNumber(4)
  set eliminated($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEliminated() => $_has(3);
  @$pb.TagNumber(4)
  void clearEliminated() => clearField(4);
}

class GameViewerData extends $pb.GeneratedMessage {
  factory GameViewerData({
    $core.Iterable<GameViewerDataPlayer>? players,
    $core.String? currentPlayerName,
    $core.String? nextPlayerName,
    $core.int? currentRound,
  }) {
    final $result = create();
    if (players != null) {
      $result.players.addAll(players);
    }
    if (currentPlayerName != null) {
      $result.currentPlayerName = currentPlayerName;
    }
    if (nextPlayerName != null) {
      $result.nextPlayerName = nextPlayerName;
    }
    if (currentRound != null) {
      $result.currentRound = currentRound;
    }
    return $result;
  }
  GameViewerData._() : super();
  factory GameViewerData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameViewerData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameViewerData', createEmptyInstance: create)
    ..pc<GameViewerDataPlayer>(1, _omitFieldNames ? '' : 'players', $pb.PbFieldType.PM, subBuilder: GameViewerDataPlayer.create)
    ..aOS(2, _omitFieldNames ? '' : 'currentPlayerName')
    ..aOS(3, _omitFieldNames ? '' : 'nextPlayerName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'currentRound', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameViewerData clone() => GameViewerData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameViewerData copyWith(void Function(GameViewerData) updates) => super.copyWith((message) => updates(message as GameViewerData)) as GameViewerData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameViewerData create() => GameViewerData._();
  GameViewerData createEmptyInstance() => create();
  static $pb.PbList<GameViewerData> createRepeated() => $pb.PbList<GameViewerData>();
  @$core.pragma('dart2js:noInline')
  static GameViewerData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameViewerData>(create);
  static GameViewerData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GameViewerDataPlayer> get players => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get currentPlayerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set currentPlayerName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentPlayerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPlayerName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nextPlayerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set nextPlayerName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNextPlayerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextPlayerName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get currentRound => $_getIZ(3);
  @$pb.TagNumber(4)
  set currentRound($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentRound() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentRound() => clearField(4);
}

class GameShareData extends $pb.GeneratedMessage {
  factory GameShareData({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  GameShareData._() : super();
  factory GameShareData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameShareData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameShareData', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameShareData clone() => GameShareData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameShareData copyWith(void Function(GameShareData) updates) => super.copyWith((message) => updates(message as GameShareData)) as GameShareData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameShareData create() => GameShareData._();
  GameShareData createEmptyInstance() => create();
  static $pb.PbList<GameShareData> createRepeated() => $pb.PbList<GameShareData>();
  @$core.pragma('dart2js:noInline')
  static GameShareData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameShareData>(create);
  static GameShareData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class Game extends $pb.GeneratedMessage {
  factory Game({
    GameConfig? config,
    $core.Iterable<GamePlayer>? players,
    GameResolution? resolution,
    GameStatus? status,
    $0.Timestamp? startedAt,
    GameViewerData? viewerData,
    GameShareData? shareData,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (players != null) {
      $result.players.addAll(players);
    }
    if (resolution != null) {
      $result.resolution = resolution;
    }
    if (status != null) {
      $result.status = status;
    }
    if (startedAt != null) {
      $result.startedAt = startedAt;
    }
    if (viewerData != null) {
      $result.viewerData = viewerData;
    }
    if (shareData != null) {
      $result.shareData = shareData;
    }
    return $result;
  }
  Game._() : super();
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game', createEmptyInstance: create)
    ..aOM<GameConfig>(1, _omitFieldNames ? '' : 'config', subBuilder: GameConfig.create)
    ..pc<GamePlayer>(2, _omitFieldNames ? '' : 'players', $pb.PbFieldType.PM, subBuilder: GamePlayer.create)
    ..aOM<GameResolution>(3, _omitFieldNames ? '' : 'resolution', subBuilder: GameResolution.create)
    ..e<GameStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: GameStatus.UNKNOWN, valueOf: GameStatus.valueOf, enumValues: GameStatus.values)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'startedAt', subBuilder: $0.Timestamp.create)
    ..aOM<GameViewerData>(6, _omitFieldNames ? '' : 'viewerData', subBuilder: GameViewerData.create)
    ..aOM<GameShareData>(7, _omitFieldNames ? '' : 'shareData', subBuilder: GameShareData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game;

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
  $core.List<GamePlayer> get players => $_getList(1);

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

  @$pb.TagNumber(6)
  GameViewerData get viewerData => $_getN(5);
  @$pb.TagNumber(6)
  set viewerData(GameViewerData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasViewerData() => $_has(5);
  @$pb.TagNumber(6)
  void clearViewerData() => clearField(6);
  @$pb.TagNumber(6)
  GameViewerData ensureViewerData() => $_ensure(5);

  @$pb.TagNumber(7)
  GameShareData get shareData => $_getN(6);
  @$pb.TagNumber(7)
  set shareData(GameShareData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasShareData() => $_has(6);
  @$pb.TagNumber(7)
  void clearShareData() => clearField(7);
  @$pb.TagNumber(7)
  GameShareData ensureShareData() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
