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

import 'viewer.pbenum.dart';

export 'viewer.pbenum.dart';

class Viewer extends $pb.GeneratedMessage {
  factory Viewer({
    ViewerType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  Viewer._() : super();
  factory Viewer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Viewer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Viewer', createEmptyInstance: create)
    ..e<ViewerType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ViewerType.WEBSITE, valueOf: ViewerType.valueOf, enumValues: ViewerType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Viewer clone() => Viewer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Viewer copyWith(void Function(Viewer) updates) => super.copyWith((message) => updates(message as Viewer)) as Viewer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Viewer create() => Viewer._();
  Viewer createEmptyInstance() => create();
  static $pb.PbList<Viewer> createRepeated() => $pb.PbList<Viewer>();
  @$core.pragma('dart2js:noInline')
  static Viewer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Viewer>(create);
  static Viewer? _defaultInstance;

  @$pb.TagNumber(1)
  ViewerType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ViewerType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
