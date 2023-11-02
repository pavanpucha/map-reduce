import 'dart:io';

import 'package:map_reduce/map_reduce.dart' as map_reduce;

void main(List<String> arguments) async {

  var process = await Process.run('wc', ['/home/p/github-projects/map-reduce/bin/map_reduce.dart']);
  // The following await statement will never complete because the
  // subprocess never exits since it is blocked waiting for its
  // stdout to be read.
 print(process.stdout);
}
