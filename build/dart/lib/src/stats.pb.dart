///
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class CountStat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountStat', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratePerSecond', $pb.PbFieldType.OF, protoName: 'ratePerSecond')
    ..aOM<$0.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CountStat._() : super();
  factory CountStat({
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
  factory CountStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountStat clone() => CountStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountStat copyWith(void Function(CountStat) updates) => super.copyWith((message) => updates(message as CountStat)) as CountStat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountStat create() => CountStat._();
  CountStat createEmptyInstance() => create();
  static $pb.PbList<CountStat> createRepeated() => $pb.PbList<CountStat>();
  @$core.pragma('dart2js:noInline')
  static CountStat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountStat>(create);
  static CountStat? _defaultInstance;

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

class StoreRatingStat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreRatingStat', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userRatingCount', $pb.PbFieldType.OU3, protoName: 'userRatingCount')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'averageUserRating', $pb.PbFieldType.OF, protoName: 'averageUserRating')
    ..hasRequiredFields = false
  ;

  StoreRatingStat._() : super();
  factory StoreRatingStat({
    $core.int? userRatingCount,
    $core.double? averageUserRating,
  }) {
    final _result = create();
    if (userRatingCount != null) {
      _result.userRatingCount = userRatingCount;
    }
    if (averageUserRating != null) {
      _result.averageUserRating = averageUserRating;
    }
    return _result;
  }
  factory StoreRatingStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreRatingStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreRatingStat clone() => StoreRatingStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreRatingStat copyWith(void Function(StoreRatingStat) updates) => super.copyWith((message) => updates(message as StoreRatingStat)) as StoreRatingStat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreRatingStat create() => StoreRatingStat._();
  StoreRatingStat createEmptyInstance() => create();
  static $pb.PbList<StoreRatingStat> createRepeated() => $pb.PbList<StoreRatingStat>();
  @$core.pragma('dart2js:noInline')
  static StoreRatingStat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreRatingStat>(create);
  static StoreRatingStat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userRatingCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set userRatingCount($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserRatingCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserRatingCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get averageUserRating => $_getN(1);
  @$pb.TagNumber(2)
  set averageUserRating($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAverageUserRating() => $_has(1);
  @$pb.TagNumber(2)
  void clearAverageUserRating() => clearField(2);
}

class Stats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stats', createEmptyInstance: create)
    ..aOM<CountStat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'games', subBuilder: CountStat.create)
    ..aOM<CountStat>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', subBuilder: CountStat.create)
    ..aOM<StoreRatingStat>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appStoreRating', protoName: 'appStoreRating', subBuilder: StoreRatingStat.create)
    ..hasRequiredFields = false
  ;

  Stats._() : super();
  factory Stats({
    CountStat? games,
    CountStat? users,
    StoreRatingStat? appStoreRating,
  }) {
    final _result = create();
    if (games != null) {
      _result.games = games;
    }
    if (users != null) {
      _result.users = users;
    }
    if (appStoreRating != null) {
      _result.appStoreRating = appStoreRating;
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
  CountStat get games => $_getN(0);
  @$pb.TagNumber(1)
  set games(CountStat v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGames() => $_has(0);
  @$pb.TagNumber(1)
  void clearGames() => clearField(1);
  @$pb.TagNumber(1)
  CountStat ensureGames() => $_ensure(0);

  @$pb.TagNumber(2)
  CountStat get users => $_getN(1);
  @$pb.TagNumber(2)
  set users(CountStat v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsers() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsers() => clearField(2);
  @$pb.TagNumber(2)
  CountStat ensureUsers() => $_ensure(1);

  @$pb.TagNumber(3)
  StoreRatingStat get appStoreRating => $_getN(2);
  @$pb.TagNumber(3)
  set appStoreRating(StoreRatingStat v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppStoreRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppStoreRating() => clearField(3);
  @$pb.TagNumber(3)
  StoreRatingStat ensureAppStoreRating() => $_ensure(2);
}

