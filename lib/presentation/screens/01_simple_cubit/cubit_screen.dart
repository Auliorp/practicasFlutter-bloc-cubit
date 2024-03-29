import 'package:blocs_app/config/config.dart';
import 'package:blocs_app/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameCubit = context.watch<UsernameCubit>();
    /* print("CubitScreen build called"); */
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(child: BlocBuilder<UsernameCubit, String>(
        /* buildWhen: (previous, current) => previous != current, */
        builder: (context, state) {
          print("Cambio");
          return Text(state);
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UsernameCubit>().setUsername(
              RandomGenerator.getRandomName() /* "Aulio Rovero" */);
          /* usernameCubit.setUsername(RandomGenerator.getRandomName()); */
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
