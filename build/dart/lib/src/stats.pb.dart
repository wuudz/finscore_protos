//
//  Generated code. Do not modify.
//  source: src/stats.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class CountStat extends $pb.GeneratedMessage {
  factory CountStat({
    $core.int? count,
    $core.double? ratePerSecond,
    $0.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (ratePerSecond != null) {
      $result.ratePerSecond = ratePerSecond;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  CountStat._() : super();
  factory CountStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CountStat', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'ratePerSecond', $pb.PbFieldType.OF, protoName: 'ratePerSecond')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountStat clone() => CountStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountStat copyWith(void Function(CountStat) updates) => super.copyWith((message) => updates(message as CountStat)) as CountStat;

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
  factory StoreRatingStat({
    $core.int? userRatingCount,
    $core.double? averageUserRating,
  }) {
    final $result = create();
    if (userRatingCount != null) {
      $result.userRatingCount = userRatingCount;
    }
    if (averageUserRating != null) {
      $result.averageUserRating = averageUserRating;
    }
    return $result;
  }
  StoreRatingStat._() : super();
  factory StoreRatingStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreRatingStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoreRatingStat', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userRatingCount', $pb.PbFieldType.OU3, protoName: 'userRatingCount')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'averageUserRating', $pb.PbFieldType.OF, protoName: 'averageUserRating')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreRatingStat clone() => StoreRatingStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreRatingStat copyWith(void Function(StoreRatingStat) updates) => super.copyWith((message) => updates(message as StoreRatingStat)) as StoreRatingStat;

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
  factory Stats({
    CountStat? games,
    CountStat? users,
    StoreRatingStat? appStoreRating,
  }) {
    final $result = create();
    if (games != null) {
      $result.games = games;
    }
    if (users != null) {
      $result.users = users;
    }
    if (appStoreRating != null) {
      $result.appStoreRating = appStoreRating;
    }
    return $result;
  }
  Stats._() : super();
  factory Stats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Stats', createEmptyInstance: create)
    ..aOM<CountStat>(1, _omitFieldNames ? '' : 'games', subBuilder: CountStat.create)
    ..aOM<CountStat>(2, _omitFieldNames ? '' : 'users', subBuilder: CountStat.create)
    ..aOM<StoreRatingStat>(3, _omitFieldNames ? '' : 'appStoreRating', protoName: 'appStoreRating', subBuilder: StoreRatingStat.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stats clone() => Stats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stats copyWith(void Function(Stats) updates) => super.copyWith((message) => updates(message as Stats)) as Stats;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
