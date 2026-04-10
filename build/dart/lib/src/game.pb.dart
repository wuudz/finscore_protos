// This is a generated file - do not edit.
//
// Generated from src/game.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import 'game.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'game.pbenum.dart';

class GameConfig extends $pb.GeneratedMessage {
  factory GameConfig({
    $core.int? zeros,
    $core.int? resetScore,
    $core.int? winningScore,
    PlayerOrder? playerOrder,
  }) {
    final result = create();
    if (zeros != null) result.zeros = zeros;
    if (resetScore != null) result.resetScore = resetScore;
    if (winningScore != null) result.winningScore = winningScore;
    if (playerOrder != null) result.playerOrder = playerOrder;
    return result;
  }

  GameConfig._();

  factory GameConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameConfig',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'zeros', fieldType: $pb.PbFieldType.OS3)
    ..aI(2, _omitFieldNames ? '' : 'resetScore', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'winningScore',
        fieldType: $pb.PbFieldType.OU3)
    ..aE<PlayerOrder>(4, _omitFieldNames ? '' : 'playerOrder',
        enumValues: PlayerOrder.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameConfig copyWith(void Function(GameConfig) updates) =>
      super.copyWith((message) => updates(message as GameConfig)) as GameConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameConfig create() => GameConfig._();
  @$core.override
  GameConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameConfig>(create);
  static GameConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get zeros => $_getIZ(0);
  @$pb.TagNumber(1)
  set zeros($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasZeros() => $_has(0);
  @$pb.TagNumber(1)
  void clearZeros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get resetScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set resetScore($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResetScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearResetScore() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get winningScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set winningScore($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWinningScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearWinningScore() => $_clearField(3);

  @$pb.TagNumber(4)
  PlayerOrder get playerOrder => $_getN(3);
  @$pb.TagNumber(4)
  set playerOrder(PlayerOrder value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPlayerOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerOrder() => $_clearField(4);
}

class GameScore extends $pb.GeneratedMessage {
  factory GameScore({
    $core.int? score,
    $0.Timestamp? timestamp,
  }) {
    final result = create();
    if (score != null) result.score = score;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  GameScore._();

  factory GameScore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameScore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameScore',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'score', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameScore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameScore copyWith(void Function(GameScore) updates) =>
      super.copyWith((message) => updates(message as GameScore)) as GameScore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameScore create() => GameScore._();
  @$core.override
  GameScore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameScore getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameScore>(create);
  static GameScore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get score => $_getIZ(0);
  @$pb.TagNumber(1)
  set score($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get timestamp => $_getN(1);
  @$pb.TagNumber(2)
  set timestamp($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureTimestamp() => $_ensure(1);
}

enum GamePlayer_Player { name, playerRef, notSet }

class GamePlayer extends $pb.GeneratedMessage {
  factory GamePlayer({
    $core.String? name,
    $core.Iterable<GameScore>? scores,
    $core.bool? kicked,
    $core.String? playerRef,
    $core.Iterable<$core.String>? teamMembers,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (scores != null) result.scores.addAll(scores);
    if (kicked != null) result.kicked = kicked;
    if (playerRef != null) result.playerRef = playerRef;
    if (teamMembers != null) result.teamMembers.addAll(teamMembers);
    return result;
  }

  GamePlayer._();

  factory GamePlayer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GamePlayer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GamePlayer_Player> _GamePlayer_PlayerByTag =
      {
    1: GamePlayer_Player.name,
    4: GamePlayer_Player.playerRef,
    0: GamePlayer_Player.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GamePlayer',
      createEmptyInstance: create)
    ..oo(0, [1, 4])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPM<GameScore>(2, _omitFieldNames ? '' : 'scores',
        subBuilder: GameScore.create)
    ..aOB(3, _omitFieldNames ? '' : 'kicked')
    ..aOS(4, _omitFieldNames ? '' : 'playerRef')
    ..pPS(5, _omitFieldNames ? '' : 'teamMembers')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GamePlayer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GamePlayer copyWith(void Function(GamePlayer) updates) =>
      super.copyWith((message) => updates(message as GamePlayer)) as GamePlayer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GamePlayer create() => GamePlayer._();
  @$core.override
  GamePlayer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GamePlayer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GamePlayer>(create);
  static GamePlayer? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(4)
  GamePlayer_Player whichPlayer() => _GamePlayer_PlayerByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(4)
  void clearPlayer() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<GameScore> get scores => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get kicked => $_getBF(2);
  @$pb.TagNumber(3)
  set kicked($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKicked() => $_has(2);
  @$pb.TagNumber(3)
  void clearKicked() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get playerRef => $_getSZ(3);
  @$pb.TagNumber(4)
  set playerRef($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPlayerRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerRef() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get teamMembers => $_getList(4);
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
    final result = create();
    if (type != null) result.type = type;
    if (receipient != null) result.receipient = receipient;
    if (value != null) result.value = value;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (emoji != null) result.emoji = emoji;
    if (priority != null) result.priority = priority;
    if (textColor != null) result.textColor = textColor;
    if (backgroundColor != null) result.backgroundColor = backgroundColor;
    return result;
  }

  GameAward._();

  factory GameAward.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameAward.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameAward',
      createEmptyInstance: create)
    ..aE<GameAwardType>(1, _omitFieldNames ? '' : 'type',
        enumValues: GameAwardType.values)
    ..aOS(2, _omitFieldNames ? '' : 'receipient')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'emoji')
    ..aI(7, _omitFieldNames ? '' : 'priority', fieldType: $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'textColor')
    ..aOS(9, _omitFieldNames ? '' : 'backgroundColor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameAward clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameAward copyWith(void Function(GameAward) updates) =>
      super.copyWith((message) => updates(message as GameAward)) as GameAward;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameAward create() => GameAward._();
  @$core.override
  GameAward createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameAward getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameAward>(create);
  static GameAward? _defaultInstance;

  @$pb.TagNumber(1)
  GameAwardType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GameAwardType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get receipient => $_getSZ(1);
  @$pb.TagNumber(2)
  set receipient($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReceipient() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceipient() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get emoji => $_getSZ(5);
  @$pb.TagNumber(6)
  set emoji($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEmoji() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmoji() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get priority => $_getIZ(6);
  @$pb.TagNumber(7)
  set priority($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPriority() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriority() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get textColor => $_getSZ(7);
  @$pb.TagNumber(8)
  set textColor($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTextColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearTextColor() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get backgroundColor => $_getSZ(8);
  @$pb.TagNumber(9)
  set backgroundColor($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBackgroundColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackgroundColor() => $_clearField(9);
}

class GameResolution extends $pb.GeneratedMessage {
  factory GameResolution({
    $0.Timestamp? finishedAt,
    $core.String? winner,
    $core.Iterable<GameAward>? awards,
  }) {
    final result = create();
    if (finishedAt != null) result.finishedAt = finishedAt;
    if (winner != null) result.winner = winner;
    if (awards != null) result.awards.addAll(awards);
    return result;
  }

  GameResolution._();

  factory GameResolution.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameResolution.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameResolution',
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'finishedAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'winner')
    ..pPM<GameAward>(3, _omitFieldNames ? '' : 'awards',
        subBuilder: GameAward.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResolution clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResolution copyWith(void Function(GameResolution) updates) =>
      super.copyWith((message) => updates(message as GameResolution))
          as GameResolution;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameResolution create() => GameResolution._();
  @$core.override
  GameResolution createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameResolution getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameResolution>(create);
  static GameResolution? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get finishedAt => $_getN(0);
  @$pb.TagNumber(1)
  set finishedAt($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFinishedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinishedAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureFinishedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get winner => $_getSZ(1);
  @$pb.TagNumber(2)
  set winner($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWinner() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinner() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<GameAward> get awards => $_getList(2);
}

class GameViewerDataPlayer extends $pb.GeneratedMessage {
  factory GameViewerDataPlayer({
    $core.String? name,
    $core.Iterable<$core.int>? scores,
    $core.Iterable<$core.int>? totalScores,
    $core.bool? eliminated,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (scores != null) result.scores.addAll(scores);
    if (totalScores != null) result.totalScores.addAll(totalScores);
    if (eliminated != null) result.eliminated = eliminated;
    return result;
  }

  GameViewerDataPlayer._();

  factory GameViewerDataPlayer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameViewerDataPlayer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameViewerDataPlayer',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'scores', $pb.PbFieldType.KU3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'totalScores', $pb.PbFieldType.KU3)
    ..aOB(4, _omitFieldNames ? '' : 'eliminated')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameViewerDataPlayer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameViewerDataPlayer copyWith(void Function(GameViewerDataPlayer) updates) =>
      super.copyWith((message) => updates(message as GameViewerDataPlayer))
          as GameViewerDataPlayer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameViewerDataPlayer create() => GameViewerDataPlayer._();
  @$core.override
  GameViewerDataPlayer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameViewerDataPlayer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameViewerDataPlayer>(create);
  static GameViewerDataPlayer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get scores => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get totalScores => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get eliminated => $_getBF(3);
  @$pb.TagNumber(4)
  set eliminated($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEliminated() => $_has(3);
  @$pb.TagNumber(4)
  void clearEliminated() => $_clearField(4);
}

class GameViewerData extends $pb.GeneratedMessage {
  factory GameViewerData({
    $core.Iterable<GameViewerDataPlayer>? players,
    $core.String? currentPlayerName,
    $core.String? nextPlayerName,
    $core.int? currentRound,
  }) {
    final result = create();
    if (players != null) result.players.addAll(players);
    if (currentPlayerName != null) result.currentPlayerName = currentPlayerName;
    if (nextPlayerName != null) result.nextPlayerName = nextPlayerName;
    if (currentRound != null) result.currentRound = currentRound;
    return result;
  }

  GameViewerData._();

  factory GameViewerData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameViewerData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameViewerData',
      createEmptyInstance: create)
    ..pPM<GameViewerDataPlayer>(1, _omitFieldNames ? '' : 'players',
        subBuilder: GameViewerDataPlayer.create)
    ..aOS(2, _omitFieldNames ? '' : 'currentPlayerName')
    ..aOS(3, _omitFieldNames ? '' : 'nextPlayerName')
    ..aI(4, _omitFieldNames ? '' : 'currentRound',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameViewerData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameViewerData copyWith(void Function(GameViewerData) updates) =>
      super.copyWith((message) => updates(message as GameViewerData))
          as GameViewerData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameViewerData create() => GameViewerData._();
  @$core.override
  GameViewerData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameViewerData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameViewerData>(create);
  static GameViewerData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GameViewerDataPlayer> get players => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get currentPlayerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set currentPlayerName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentPlayerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPlayerName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get nextPlayerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set nextPlayerName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNextPlayerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextPlayerName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get currentRound => $_getIZ(3);
  @$pb.TagNumber(4)
  set currentRound($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentRound() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentRound() => $_clearField(4);
}

class GameShareData extends $pb.GeneratedMessage {
  factory GameShareData({
    $core.String? key,
  }) {
    final result = create();
    if (key != null) result.key = key;
    return result;
  }

  GameShareData._();

  factory GameShareData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GameShareData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GameShareData',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameShareData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameShareData copyWith(void Function(GameShareData) updates) =>
      super.copyWith((message) => updates(message as GameShareData))
          as GameShareData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameShareData create() => GameShareData._();
  @$core.override
  GameShareData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GameShareData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameShareData>(create);
  static GameShareData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
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
    final result = create();
    if (config != null) result.config = config;
    if (players != null) result.players.addAll(players);
    if (resolution != null) result.resolution = resolution;
    if (status != null) result.status = status;
    if (startedAt != null) result.startedAt = startedAt;
    if (viewerData != null) result.viewerData = viewerData;
    if (shareData != null) result.shareData = shareData;
    return result;
  }

  Game._();

  factory Game.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Game.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Game',
      createEmptyInstance: create)
    ..aOM<GameConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: GameConfig.create)
    ..pPM<GamePlayer>(2, _omitFieldNames ? '' : 'players',
        subBuilder: GamePlayer.create)
    ..aOM<GameResolution>(3, _omitFieldNames ? '' : 'resolution',
        subBuilder: GameResolution.create)
    ..aE<GameStatus>(4, _omitFieldNames ? '' : 'status',
        enumValues: GameStatus.values)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'startedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<GameViewerData>(6, _omitFieldNames ? '' : 'viewerData',
        subBuilder: GameViewerData.create)
    ..aOM<GameShareData>(7, _omitFieldNames ? '' : 'shareData',
        subBuilder: GameShareData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Game clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Game copyWith(void Function(Game) updates) =>
      super.copyWith((message) => updates(message as Game)) as Game;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  @$core.override
  Game createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  @$pb.TagNumber(1)
  GameConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(GameConfig value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => $_clearField(1);
  @$pb.TagNumber(1)
  GameConfig ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<GamePlayer> get players => $_getList(1);

  @$pb.TagNumber(3)
  GameResolution get resolution => $_getN(2);
  @$pb.TagNumber(3)
  set resolution(GameResolution value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasResolution() => $_has(2);
  @$pb.TagNumber(3)
  void clearResolution() => $_clearField(3);
  @$pb.TagNumber(3)
  GameResolution ensureResolution() => $_ensure(2);

  @$pb.TagNumber(4)
  GameStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(GameStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get startedAt => $_getN(4);
  @$pb.TagNumber(5)
  set startedAt($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStartedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureStartedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  GameViewerData get viewerData => $_getN(5);
  @$pb.TagNumber(6)
  set viewerData(GameViewerData value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasViewerData() => $_has(5);
  @$pb.TagNumber(6)
  void clearViewerData() => $_clearField(6);
  @$pb.TagNumber(6)
  GameViewerData ensureViewerData() => $_ensure(5);

  @$pb.TagNumber(7)
  GameShareData get shareData => $_getN(6);
  @$pb.TagNumber(7)
  set shareData(GameShareData value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasShareData() => $_has(6);
  @$pb.TagNumber(7)
  void clearShareData() => $_clearField(7);
  @$pb.TagNumber(7)
  GameShareData ensureShareData() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
