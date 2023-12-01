///
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class Stat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stat', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratePerSecond', $pb.PbFieldType.OF, protoName: 'ratePerSecond')
    ..aOM<$0.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Stat._() : super();
  factory Stat({
    $core.int? count,
    $core.double? ratePerSecond,
    $0.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (ratePerSecond != null) {
      _result.ratePerSecond = ratePerSecond;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Stat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stat clone() => Stat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stat copyWith(void Function(Stat) updates) => super.copyWith((message) => updates(message as Stat)) as Stat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Stat create() => Stat._();
  Stat createEmptyInstance() => create();
  static $pb.PbList<Stat> createRepeated() => $pb.PbList<Stat>();
  @$core.pragma('dart2js:noInline')
  static Stat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stat>(create);
  static Stat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get ratePerSecond => $_getN(1);
  @$pb.TagNumber(2)
  set ratePerSecond($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRatePerSecond() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatePerSecond() => clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureUpdatedAt() => $_ensure(2);
}

class Stats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stats', createEmptyInstance: create)
    ..aOM<Stat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'games', subBuilder: Stat.create)
    ..hasRequiredFields = false
  ;

  Stats._() : super();
  factory Stats({
    Stat? games,
  }) {
    final _result = create();
    if (games != null) {
      _result.games = games;
    }
    return _result;
  }
  factory Stats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stats clone() => Stats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stats copyWith(void Function(Stats) updates) => super.copyWith((message) => updates(message as Stats)) as Stats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Stats create() => Stats._();
  Stats createEmptyInstance() => create();
  static $pb.PbList<Stats> createRepeated() => $pb.PbList<Stats>();
  @$core.pragma('dart2js:noInline')
  static Stats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stats>(create);
  static Stats? _defaultInstance;

  @$pb.TagNumber(1)
  Stat get games => $_getN(0);
  @$pb.TagNumber(1)
  set games(Stat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGames() => $_has(0);
  @$pb.TagNumber(1)
  void clearGames() => clearField(1);
  @$pb.TagNumber(1)
  Stat ensureGames() => $_ensure(0);
}

