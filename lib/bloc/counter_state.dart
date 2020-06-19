part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterRunningState extends CounterState {
  final int count;
  CounterRunningState({this.count});
}
