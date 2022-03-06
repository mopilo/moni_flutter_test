import 'package:get_it/get_it.dart';

import '../../feature/my_cluster/data/datasource/my_cluster_service.dart';
import '../../feature/my_cluster/presentation/bloc/my_cluster_bloc/my_cluster_bloc.dart';
import '../environment/evn.dart';
import '../network/network_client.dart';

final inject = GetIt.instance;

Future<void> initializeCore({required Environment environment}) async {
  Env.environment = environment;
  _initServices();
  _initBloc();
  _initDataSources();
  _initDataRepositories();
}

/// Initialize bloc's here
void _initBloc() {
  inject.registerLazySingleton<MyClusterBloc>(() => MyClusterBloc(inject()));
}

/// Initialize data sources implementations
void _initDataSources() {}

/// Initialize data repositories implementations
void _initDataRepositories() {}

/// Initialize services's here
void _initServices() {
  inject.registerLazySingleton<NetworkClient>(
      () => NetworkClient(baseUrl: Env.coreBaseUrl));
  inject.registerLazySingleton<MyClusterService>(
      () => MyClusterService(networkService: inject()));
}
