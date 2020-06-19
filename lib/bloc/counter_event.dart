part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class CounterIncrement extends CounterEvent {
  final int count;
  CounterIncrement({this.count});

  @override
  List<Object> get props => [count];
}

class CounterDecrement extends CounterEvent {
  final int count;
  CounterDecrement({this.count});

  @override
  List<Object> get props => [count];
}
