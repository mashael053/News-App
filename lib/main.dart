import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_app/home_screen_cubit.dart';
import 'package:last_app/home_screen_with_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenCubit>(
          create: (BuildContext context) => HomeScreenCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'News App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
          cardColor: Color.fromARGB(26, 237, 229, 229),
          ).copyWith(
            secondary: const Color.fromARGB(255, 96, 93, 101),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ScreenOne(),
      ),
    );
  }
}