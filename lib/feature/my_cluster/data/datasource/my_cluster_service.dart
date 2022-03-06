import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/network/network_client.dart';
import '../model/cluster_response.dart';

class MyClusterService {
  final NetworkClient _networkClient;

  MyClusterService({required NetworkClient networkService})
      : _networkClient = networkService;

  Future<Either<Exception, MyClusterResponse>> loadCluster() async {
    try {
      Response userData = await _networkClient.dio.get(
        _networkClient.baseUrl!,
      );
      final _loginResponse = MyClusterResponse.fromJson(userData.data);

      return right(_loginResponse);
    } on DioError catch (e) {
      if (e.response != null) {
        return left(Exception(e.response?.data));
      } else {
        return left(Exception(e.response?.data));
      }
    }
  }
}
