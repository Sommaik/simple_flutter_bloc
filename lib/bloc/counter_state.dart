part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterRunningState extends CounterState {
  final int count;
  CounterRunningState({this.count});

  @override
  List<Object> get props => [count];
}
