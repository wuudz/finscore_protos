// This is a generated file - do not edit.
//
// Generated from src/user.proto.

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

class UserData extends $pb.GeneratedMessage {
  factory UserData({
    $0.Timestamp? createdAt,
    $core.bool? admin,
  }) {
    final result = create();
    if (createdAt != null) result.createdAt = createdAt;
    if (admin != null) result.admin = admin;
    return result;
  }

  UserData._();

  factory UserData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserData',
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOB(4, _omitFieldNames ? '' : 'admin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserData copyWith(void Function(UserData) updates) =>
      super.copyWith((message) => updates(message as UserData)) as UserData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserData create() => UserData._();
  @$core.override
  UserData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserData>(create);
  static UserData? _defaultInstance;

  @$pb.TagNumber(3)
  $0.Timestamp get createdAt => $_getN(0);
  @$pb.TagNumber(3)
  set createdAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureCreatedAt() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.bool get admin => $_getBF(1);
  @$pb.TagNumber(4)
  set admin($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(4)
  $core.bool hasAdmin() => $_has(1);
  @$pb.TagNumber(4)
  void clearAdmin() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
