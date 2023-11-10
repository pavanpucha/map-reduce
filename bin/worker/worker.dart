import 'dart:async';

import 'package:grpc/grpc.dart';

import '../generated/coordinator.pbgrpc.dart';

abstract class WorkerInterface {
  void simulateFailure();

  /// Read the partition data and perform the user defined map function
  void mapData();
  void reduceTask();

  /// Store the data on file. Preferably
  void storeData();
  void messageCoordinator();
}

init() {}

Future<void> main() async {
  List<ClientChannel> clientChannel = [];
  List<CoordinatorClient> stubs = [];
  for (int i = 0; i < 3; i++) {
    clientChannel.add(ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry:
              CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        )));
  }

  for (int i = 0; i < 3; i++) {
    stubs.add(CoordinatorClient(clientChannel[i]));
  }
  final name = "PREFIX";

  try {
    for (int i = 0; i < 3; i++) {
      Timer.periodic(Duration(seconds: 4), (timer) async {
        var responser =
            await stubs[i].assignTask(MapJobs()..name = "SERVER_DOWN");
        print('stub resp[onse $i : ${responser.output}');
        switch (responser.output) {
          case "Map":
            print("Map task");
            break;
          case "Reduce":
            print("Reduce");
            break;
          default:
            print("Default");
        }
      });
    }
  } catch (e) {
    print("Caught error : $e");
  }
}
