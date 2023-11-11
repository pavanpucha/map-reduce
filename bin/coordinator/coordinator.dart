import 'dart:io';

import 'package:grpc/grpc.dart';

import '../generated/coordinator.pbgrpc.dart';
import 'coordinator_data.dart';

abstract class CoordinatorInterface {
  void splitJobs();
  void assignJobs();
}

class CoorninatorService extends CoordinatorServiceBase
    implements CoordinatorInterface {

      // 
  @override
  Future<ReduceOutput> assignTask(ServiceCall call, MapJobs request) async {
    return ReduceOutput()..output = "reduced output ${request.name}";
  }


  @override
  Stream<StrMsg> biDir(ServiceCall call, Stream<StrMsg> request) {
    // TODO: implement biDir
    throw UnimplementedError();
  }

  @override
  Stream<StrMsg> streamToWorker(ServiceCall call, MapJobs request) async* {
    // TODO: implement streamToWorker
    yield StrMsg()
      ..message = "Streaming to worker #${request.name}";
  }

  @override
  void assignJobs() {}

/**
 * 
 * Output is a list of splitdata.
 */
  @override
  void splitJobs() {
    readData();
  }
}

Future<List<SplitData>> readData() async {
  // Split the data into n partitions. with each partition containing 1000 words
  List<SplitData> tempData = [];
  final textData =
      await File('/home/p/github-projects/map-reduce/bin/data/pg-grimm.txt')
          .readAsString();
  final totalPartitions = textData.length / 1000;
  for (int i = 0; i < totalPartitions; i++) {
    // Not Pretty but does the work for now.
    if ((i + 1) * 1000 > textData.length) {
      tempData.add(SplitData(
          partitonNum: i,
          data: textData.substring(i * 1000, textData.length - 1)));
    } else {
      tempData.add(SplitData(
          partitonNum: i,
          data: textData.substring(i * 1000, (((i + 1) * 1000) - 1))));
    }
  }
  return tempData;
}

Future<void> main(List<String> args) async {
  List<SplitData> initData = [];

 

  final cs = CoorninatorService();
  //initData = cs.splitJobs;
  print(initData.length);
  print(initData.last.data.length);
  final server = Server.create(
    services: [cs],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');

}

class Coordinator extends CoordinatorInterface {
  final _abc = 16;

  @override
  void assignJobs() {
    // TODO: implement assignJobs
  }

  @override
  void splitJobs() {
    // TODO: implement splitJobs
  }
}
