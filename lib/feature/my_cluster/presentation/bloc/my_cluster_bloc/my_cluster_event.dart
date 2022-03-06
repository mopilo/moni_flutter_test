part of 'my_cluster_bloc.dart';

abstract class MyClusterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetCluster extends MyClusterEvent {
  GetCluster();
}
