import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_test/core/environment/evn.dart';
import 'package:mobile_test/core/injection/injection_container.dart';
import 'package:mobile_test/feature/my_cluster/data/datasource/my_cluster_service.dart';
import 'package:mobile_test/feature/my_cluster/data/model/cluster_response.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'my_cluster_test.mocks.dart';

@GenerateMocks([http.Client])
void main() async {
  final client = MockClient();

  await initializeCore(environment: Environment.staging);

  MyClusterService _myClusterService =
      MyClusterService(networkService: inject());
  group('GetCluster', () {
    test('returns true if the http call completes successfully', () async {
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.post(
        Uri.parse("https://moni-staging-1.vercel.app/api/loans"),
      )).thenAnswer((_) async =>
          http.Response('{"success": true, "message": "", "data" : {}}', 200));

      expect(await _myClusterService.loadCluster(),
          isA<Right<Exception, MyClusterResponse>>());
    });
  });
}
