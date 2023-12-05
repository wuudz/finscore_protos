//
//  Generated code. Do not modify.
//  source: src/viewer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ViewerType extends $pb.ProtobufEnum {
  static const ViewerType WEBSITE = ViewerType._(0, _omitEnumNames ? '' : 'WEBSITE');
  static const ViewerType APP = ViewerType._(1, _omitEnumNames ? '' : 'APP');

  static const $core.List<ViewerType> values = <ViewerType> [
    WEBSITE,
    APP,
  ];

  static final $core.Map<$core.int, ViewerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ViewerType? valueOf($core.int value) => _byValue[value];

  const ViewerType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
