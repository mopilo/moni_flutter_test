import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_test/feature/my_cluster/data/datasource/my_cluster_service.dart';
import 'package:mobile_test/feature/my_cluster/data/model/cluster_response.dart';

part 'my_cluster_event.dart';
part 'my_cluster_state.dart';

class MyClusterBloc extends Bloc<MyClusterEvent, MyClusterState> {
  final MyClusterService _myClusterService;

  MyClusterBloc(this._myClusterService) : super(MyClusterInitial()) {
    on<GetCluster>(loadCluster);
  }

  Future<void> loadCluster(
      GetCluster event, Emitter<MyClusterState> emit) async {
    emit(MyClusterLoading());
    (await _myClusterService.loadCluster()).fold(
      (error) => emit(MyClusterError(error)),
      (myClusterResponse) =>
          emit(MyClusterSuccessful(myClusterResponse: myClusterResponse)),
    );
  }
}
