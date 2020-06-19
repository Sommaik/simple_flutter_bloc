import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple/bloc/counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Counter'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              buildCounterText(context, state),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(CounterIncrement(count: 1));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Text buildCounterText(BuildContext context, CounterState state) {
    return Text(
      state is CounterRunningState ? '${state.count}' : '',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
