import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_cluster_event.dart';
part 'my_cluster_state.dart';

class MyClusterBloc extends Bloc<MyClusterEvent, MyClusterState> {
  MyClusterBloc() : super(MyClusterInitial()) {
    on<MyClusterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
