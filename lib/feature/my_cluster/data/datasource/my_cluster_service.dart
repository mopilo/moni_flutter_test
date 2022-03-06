import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/network/network_client.dart';
import '../model/cluster_response.dart';

class MyClusterService {
  final NetworkClient _networkClient;

  MyClusterService({required NetworkClient networkService})
      : _networkClient = networkService;

  Future<Either<Exception, MyClusterResponse>> loadCluster() async {
    print(_networkClient.baseUrl);
    try {
      Response userData = await _networkClient.dio.get(
        _networkClient.baseUrl!,
      );
      final _loginResponse = MyClusterResponse.fromJson(userData.data);

      print(userData.data["data"].runtimeType);
      return right(_loginResponse);
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response?.statusCode);
        print("error");
        return left(Exception(e.response?.data));
      } else {
        print(e.response);
        return left(Exception(e.response?.data));
      }
    }
  }
}
