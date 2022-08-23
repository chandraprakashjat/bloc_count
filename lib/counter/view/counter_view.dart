import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text(
            'Counter value : $state',
            style: textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counter_increment_button'),
            onPressed: context.read<CounterCubit>().increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            key: const Key('counter_decrment_button'),
            onPressed: context.read<CounterCubit>().decrement,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
