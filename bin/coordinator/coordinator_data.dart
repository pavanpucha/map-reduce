
// data classes

// Alternative : use protobufs. 
class IntermediateData {
  int workerID;
  Map<String, int> mapData;
  IntermediateData({required this.workerID, required this.mapData});
}

class JobStatus {

}

class SplitData {
  int partitonNum;
  String data;

  SplitData({required this.partitonNum, required this.data});
}

class ProcessedData {}

/*
Contains the unprocessed data, i.e. initial data that will be split into n partitions. 


*/
class UnprocessedData {}
