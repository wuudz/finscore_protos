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

class ViewerType extends $pb.ProtobufEnum {
  static const ViewerType WEBSITE =
      ViewerType._(0, _omitEnumNames ? '' : 'WEBSITE');
  static const ViewerType APP = ViewerType._(1, _omitEnumNames ? '' : 'APP');

  static const $core.List<ViewerType> values = <ViewerType>[
    WEBSITE,
    APP,
  ];

  static final $core.List<ViewerType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ViewerType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ViewerType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
