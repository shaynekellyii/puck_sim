//
//  Generated code. Do not modify.
//  source: api.proto
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

import 'api.pb.dart' as $0;

export 'api.pb.dart';

@$pb.GrpcServiceName('puck.Puck')
class PuckClient extends $grpc.Client {
  static final _$createTeam = $grpc.ClientMethod<$0.CreateTeamRequest, $0.CreateTeamResponse>(
      '/puck.Puck/CreateTeam',
      ($0.CreateTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTeamResponse.fromBuffer(value));

  PuckClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTeamResponse> createTeam($0.CreateTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTeam, request, options: options);
  }
}

@$pb.GrpcServiceName('puck.Puck')
abstract class PuckServiceBase extends $grpc.Service {
  $core.String get $name => 'puck.Puck';

  PuckServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTeamRequest, $0.CreateTeamResponse>(
        'CreateTeam',
        createTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTeamRequest.fromBuffer(value),
        ($0.CreateTeamResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTeamResponse> createTeam_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTeamRequest> request) async {
    return createTeam(call, await request);
  }

  $async.Future<$0.CreateTeamResponse> createTeam($grpc.ServiceCall call, $0.CreateTeamRequest request);
}
