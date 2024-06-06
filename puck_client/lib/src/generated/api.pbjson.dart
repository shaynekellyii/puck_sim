//
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createTeamRequestDescriptor instead')
const CreateTeamRequest$json = {
  '1': 'CreateTeamRequest',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 9, '10': 'location'},
    {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'abbreviation', '3': 3, '4': 1, '5': 9, '10': 'abbreviation'},
  ],
};

/// Descriptor for `CreateTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTeamRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUZWFtUmVxdWVzdBIaCghsb2NhdGlvbhgBIAEoCVIIbG9jYXRpb24SGgoIbmlja2'
    '5hbWUYAiABKAlSCG5pY2tuYW1lEiIKDGFiYnJldmlhdGlvbhgDIAEoCVIMYWJicmV2aWF0aW9u');

@$core.Deprecated('Use createTeamResponseDescriptor instead')
const CreateTeamResponse$json = {
  '1': 'CreateTeamResponse',
  '2': [
    {'1': 'team', '3': 1, '4': 1, '5': 11, '6': '.puck.Team', '10': 'team'},
  ],
};

/// Descriptor for `CreateTeamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTeamResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUZWFtUmVzcG9uc2USHgoEdGVhbRgBIAEoCzIKLnB1Y2suVGVhbVIEdGVhbQ==');

@$core.Deprecated('Use teamDescriptor instead')
const Team$json = {
  '1': 'Team',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'abbreviation', '3': 4, '4': 1, '5': 9, '10': 'abbreviation'},
  ],
};

/// Descriptor for `Team`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamDescriptor = $convert.base64Decode(
    'CgRUZWFtEg4KAmlkGAEgASgJUgJpZBIaCghsb2NhdGlvbhgCIAEoCVIIbG9jYXRpb24SGgoIbm'
    'lja25hbWUYAyABKAlSCG5pY2tuYW1lEiIKDGFiYnJldmlhdGlvbhgEIAEoCVIMYWJicmV2aWF0'
    'aW9u');

@$core.Deprecated('Use errorDetailDescriptor instead')
const ErrorDetail$json = {
  '1': 'ErrorDetail',
  '2': [
    {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ErrorDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDetailDescriptor = $convert.base64Decode(
    'CgtFcnJvckRldGFpbBIgCgtkZXNjcmlwdGlvbhgBIAEoCVILZGVzY3JpcHRpb24=');

