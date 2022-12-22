///
//  Generated code. Do not modify.
//  source: src/viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'viewer.pbenum.dart';

export 'viewer.pbenum.dart';

class Viewer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Viewer', createEmptyInstance: create)
    ..e<ViewerType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ViewerType.WEBSITE, valueOf: ViewerType.valueOf, enumValues: ViewerType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  Viewer._() : super();
  factory Viewer({
    ViewerType? type,
    $core.String? uid,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }
  factory Viewer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Viewer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Viewer clone() => Viewer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Viewer copyWith(void Function(Viewer) updates) => super.copyWith((message) => updates(message as Viewer)) as Viewer; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
}

