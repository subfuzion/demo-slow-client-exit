import 'package:googleapis/pubsub/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

void main() async {
  const scopes = [
    PubsubApi.cloudPlatformScope,
    PubsubApi.pubsubScope,
  ];

  final client = await clientViaApplicationDefaultCredentials(scopes: scopes);

  // basically, calling close() doesn't make any difference
  final stopwatch = Stopwatch()..start();
  print('closing client...');
  client.close();
  print('client should be closed');
  print('elapsed: ${stopwatch.elapsed}');
  print('Done, should exit now...');
}
