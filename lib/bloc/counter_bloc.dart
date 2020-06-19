import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterRunningState(count: 0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    int _current = (state as CounterRunningState).count;
    if (event is CounterIncrement) {
      yield CounterRunningState(count: _current + event.count);
    } else if (event is CounterDecrement) {
      yield CounterRunningState(count: _current - event.count);
    }
  }
}
