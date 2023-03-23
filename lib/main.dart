import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable_tutorial/injection.dart';
import 'package:injectable_tutorial/presentation/counter_change_notifier.dart';
import 'package:injectable_tutorial/presentation/counter_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Env.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (_) => locator<CounterCubit>(),
        child: CounterView(),
      ),
    );
  }
}
