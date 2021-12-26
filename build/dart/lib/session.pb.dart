///
//  Generated code. Do not modify.
//  source: lib/session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'game.pb.dart' as $0;
import 'viewer.pb.dart' as $1;
import 'player.pb.dart' as $2;

class Session extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Session', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..m<$core.String, $1.Viewer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viewers', entryClassName: 'Session.ViewersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.Viewer.create)
    ..m<$core.String, $2.Player>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', entryClassName: 'Session.PlayersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $2.Player.create)
    ..pc<$0.Game>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'games', $pb.PbFieldType.PM, subBuilder: $0.Game.create)
    ..hasRequiredFields = false
  ;

  Session._() : super();
  factory Session({
    $core.String? owner,
    $core.Map<$core.String, $1.Viewer>? viewers,
    $core.Map<$core.String, $2.Player>? players,
    $core.Iterable<$0.Game>? games,
  }) {
    final _result = create();
    if (owner != null) {
      _result.owner = owner;
    }
    if (viewers != null) {
      _result.viewers.addAll(viewers);
    }
    if (players != null) {
      _result.players.addAll(players);
    }
    if (games != null) {
      _result.games.addAll(games);
    }
    return _result;
  }
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get owner => $_getSZ(0);
  @$pb.TagNumber(1)
  set owner($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $1.Viewer> get viewers => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $2.Player> get players => $_getMap(2);

  @$pb.TagNumber(4)
  $core.List<$0.Game> get games => $_getList(3);
}

