part of 'my_cluster_bloc.dart';

abstract class MyClusterState extends Equatable {
  const MyClusterState();
}

class MyClusterInitial extends MyClusterState {
  @override
  List<Object> get props => [];
}

class MyClusterLoading extends MyClusterState {
  @override
  List<Object> get props => [];
}

class MyClusterError extends MyClusterState {
  final Exception error;

  const MyClusterError(this.error);

  @override
  List<Object> get props => [];
}

class MyClusterSuccessful extends MyClusterState {
  final MyClusterResponse myClusterResponse;
  const MyClusterSuccessful({required this.myClusterResponse});
  @override
  List<Object> get props => [myClusterResponse];
}
