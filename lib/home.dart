import 'package:bloc_counter_app/cubit/coun_cibit.dart';
import 'package:bloc_counter_app/cubit/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decrement();
              },
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: ((context, state) {
                return Text(
                  state.number.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              }),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
