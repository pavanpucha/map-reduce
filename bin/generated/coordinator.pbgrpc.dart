//
//  Generated code. Do not modify.
//  source: coordinator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'coordinator.pb.dart' as $0;

export 'coordinator.pb.dart';

@$pb.GrpcServiceName('map_reduce.Coordinator')
class CoordinatorClient extends $grpc.Client {
  static final _$assignTask = $grpc.ClientMethod<$0.MapJobs, $0.ReduceOutput>(
      '/map_reduce.Coordinator/AssignTask',
      ($0.MapJobs value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReduceOutput.fromBuffer(value));

  CoordinatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ReduceOutput> assignTask($0.MapJobs request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }
}

@$pb.GrpcServiceName('map_reduce.Coordinator')
abstract class CoordinatorServiceBase extends $grpc.Service {
  $core.String get $name => 'map_reduce.Coordinator';

  CoordinatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MapJobs, $0.ReduceOutput>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MapJobs.fromBuffer(value),
        ($0.ReduceOutput value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReduceOutput> assignTask_Pre($grpc.ServiceCall call, $async.Future<$0.MapJobs> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$0.ReduceOutput> assignTask($grpc.ServiceCall call, $0.MapJobs request);
}
