//
//  Generated code. Do not modify.
//  source: coordinator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MapJobs extends $pb.GeneratedMessage {
  factory MapJobs({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  MapJobs._() : super();
  factory MapJobs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapJobs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapJobs', package: const $pb.PackageName(_omitMessageNames ? '' : 'map_reduce'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapJobs clone() => MapJobs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapJobs copyWith(void Function(MapJobs) updates) => super.copyWith((message) => updates(message as MapJobs)) as MapJobs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapJobs create() => MapJobs._();
  MapJobs createEmptyInstance() => create();
  static $pb.PbList<MapJobs> createRepeated() => $pb.PbList<MapJobs>();
  @$core.pragma('dart2js:noInline')
  static MapJobs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapJobs>(create);
  static MapJobs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class StrMsg extends $pb.GeneratedMessage {
  factory StrMsg({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  StrMsg._() : super();
  factory StrMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StrMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StrMsg', package: const $pb.PackageName(_omitMessageNames ? '' : 'map_reduce'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StrMsg clone() => StrMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StrMsg copyWith(void Function(StrMsg) updates) => super.copyWith((message) => updates(message as StrMsg)) as StrMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StrMsg create() => StrMsg._();
  StrMsg createEmptyInstance() => create();
  static $pb.PbList<StrMsg> createRepeated() => $pb.PbList<StrMsg>();
  @$core.pragma('dart2js:noInline')
  static StrMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StrMsg>(create);
  static StrMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class ReduceOutput extends $pb.GeneratedMessage {
  factory ReduceOutput({
    $core.String? output,
  }) {
    final $result = create();
    if (output != null) {
      $result.output = output;
    }
    return $result;
  }
  ReduceOutput._() : super();
  factory ReduceOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReduceOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReduceOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'map_reduce'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'output')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReduceOutput clone() => ReduceOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReduceOutput copyWith(void Function(ReduceOutput) updates) => super.copyWith((message) => updates(message as ReduceOutput)) as ReduceOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReduceOutput create() => ReduceOutput._();
  ReduceOutput createEmptyInstance() => create();
  static $pb.PbList<ReduceOutput> createRepeated() => $pb.PbList<ReduceOutput>();
  @$core.pragma('dart2js:noInline')
  static ReduceOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReduceOutput>(create);
  static ReduceOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get output => $_getSZ(0);
  @$pb.TagNumber(1)
  set output($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutput() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutput() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
