// This is a generated file - do not edit.
//
// Generated from src/stats.proto.

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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class CountStat extends $pb.GeneratedMessage {
  factory CountStat({
    $core.int? count,
    $core.double? ratePerSecond,
    $0.Timestamp? updatedAt,
  }) {
    final result = create();
    if (count != null) result.count = count;
    if (ratePerSecond != null) result.ratePerSecond = ratePerSecond;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  CountStat._();

  factory CountStat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CountStat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CountStat',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'count', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'ratePerSecond',
        protoName: 'ratePerSecond', fieldType: $pb.PbFieldType.OF)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt',
        protoName: 'updatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CountStat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CountStat copyWith(void Function(CountStat) updates) =>
      super.copyWith((message) => updates(message as CountStat)) as CountStat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountStat create() => CountStat._();
  @$core.override
  CountStat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CountStat getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountStat>(create);
  static CountStat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get ratePerSecond => $_getN(1);
  @$pb.TagNumber(2)
  set ratePerSecond($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRatePerSecond() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatePerSecond() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureUpdatedAt() => $_ensure(2);
}

class StoreRatingStat extends $pb.GeneratedMessage {
  factory StoreRatingStat({
    $core.int? userRatingCount,
    $core.double? averageUserRating,
  }) {
    final result = create();
    if (userRatingCount != null) result.userRatingCount = userRatingCount;
    if (averageUserRating != null) result.averageUserRating = averageUserRating;
    return result;
  }

  StoreRatingStat._();

  factory StoreRatingStat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StoreRatingStat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoreRatingStat',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'userRatingCount',
        protoName: 'userRatingCount', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'averageUserRating',
        protoName: 'averageUserRating', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoreRatingStat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StoreRatingStat copyWith(void Function(StoreRatingStat) updates) =>
      super.copyWith((message) => updates(message as StoreRatingStat))
          as StoreRatingStat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoreRatingStat create() => StoreRatingStat._();
  @$core.override
  StoreRatingStat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StoreRatingStat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoreRatingStat>(create);
  static StoreRatingStat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userRatingCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set userRatingCount($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserRatingCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserRatingCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get averageUserRating => $_getN(1);
  @$pb.TagNumber(2)
  set averageUserRating($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAverageUserRating() => $_has(1);
  @$pb.TagNumber(2)
  void clearAverageUserRating() => $_clearField(2);
}

class Stats extends $pb.GeneratedMessage {
  factory Stats({
    CountStat? games,
    CountStat? users,
    StoreRatingStat? appStoreRating,
    $0.Timestamp? createdAt,
  }) {
    final result = create();
    if (games != null) result.games = games;
    if (users != null) result.users = users;
    if (appStoreRating != null) result.appStoreRating = appStoreRating;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  Stats._();

  factory Stats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Stats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Stats',
      createEmptyInstance: create)
    ..aOM<CountStat>(1, _omitFieldNames ? '' : 'games',
        subBuilder: CountStat.create)
    ..aOM<CountStat>(2, _omitFieldNames ? '' : 'users',
        subBuilder: CountStat.create)
    ..aOM<StoreRatingStat>(3, _omitFieldNames ? '' : 'appStoreRating',
        protoName: 'appStoreRating', subBuilder: StoreRatingStat.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'createdAt',
        protoName: 'createdAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stats copyWith(void Function(Stats) updates) =>
      super.copyWith((message) => updates(message as Stats)) as Stats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stats create() => Stats._();
  @$core.override
  Stats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Stats getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stats>(create);
  static Stats? _defaultInstance;

  @$pb.TagNumber(1)
  CountStat get games => $_getN(0);
  @$pb.TagNumber(1)
  set games(CountStat value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGames() => $_has(0);
  @$pb.TagNumber(1)
  void clearGames() => $_clearField(1);
  @$pb.TagNumber(1)
  CountStat ensureGames() => $_ensure(0);

  @$pb.TagNumber(2)
  CountStat get users => $_getN(1);
  @$pb.TagNumber(2)
  set users(CountStat value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUsers() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsers() => $_clearField(2);
  @$pb.TagNumber(2)
  CountStat ensureUsers() => $_ensure(1);

  @$pb.TagNumber(3)
  StoreRatingStat get appStoreRating => $_getN(2);
  @$pb.TagNumber(3)
  set appStoreRating(StoreRatingStat value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAppStoreRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppStoreRating() => $_clearField(3);
  @$pb.TagNumber(3)
  StoreRatingStat ensureAppStoreRating() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureCreatedAt() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
