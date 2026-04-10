// This is a generated file - do not edit.
//
// Generated from src/viewer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'viewer.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'viewer.pbenum.dart';

class Viewer extends $pb.GeneratedMessage {
  factory Viewer({
    ViewerType? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  Viewer._();

  factory Viewer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Viewer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Viewer',
      createEmptyInstance: create)
    ..aE<ViewerType>(1, _omitFieldNames ? '' : 'type',
        enumValues: ViewerType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Viewer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Viewer copyWith(void Function(Viewer) updates) =>
      super.copyWith((message) => updates(message as Viewer)) as Viewer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Viewer create() => Viewer._();
  @$core.override
  Viewer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Viewer getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Viewer>(create);
  static Viewer? _defaultInstance;

  @$pb.TagNumber(1)
  ViewerType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ViewerType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
