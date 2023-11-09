

import 'package:grpc/grpc.dart';

import '../generated/coordinator.pbgrpc.dart';

abstract class CoordinatorInterface{
  void splitJobs();
  void assignJobs();

}

// String parseClient(String name){
  
// }

class CoorninatorService extends CoordinatorServiceBase {
  @override
  Future<ReduceOutput> assignTask(ServiceCall call, MapJobs request) async {
    return ReduceOutput()..output = "reduced output ${request.name}";
  }
}

Future<void> main(List<String> args) async {
  final server = Server.create(
    services: [CoorninatorService()],
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