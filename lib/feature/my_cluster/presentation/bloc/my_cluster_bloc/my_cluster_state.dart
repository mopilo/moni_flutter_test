part of 'my_cluster_bloc.dart';

abstract class MyClusterState extends Equatable {
  const MyClusterState();
}

class MyClusterInitial extends MyClusterState {
  @override
  List<Object> get props => [];
}
