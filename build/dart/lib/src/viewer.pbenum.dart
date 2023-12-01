///
//  Generated code. Do not modify.
//  source: src/viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ViewerType extends $pb.ProtobufEnum {
  static const ViewerType WEBSITE = ViewerType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEBSITE');
  static const ViewerType APP = ViewerType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APP');

  static const $core.List<ViewerType> values = <ViewerType> [
    WEBSITE,
    APP,
  ];

  static final $core.Map<$core.int, ViewerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ViewerType? valueOf($core.int value) => _byValue[value];

  const ViewerType._($core.int v, $core.String n) : super(v, n);
}

