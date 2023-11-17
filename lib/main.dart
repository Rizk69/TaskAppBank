import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Screens/Screen1.dart';


import 'Cubit/card_selection_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CardSelectionCubit>(create: (context) => CardSelectionCubit()),
          BlocProvider<ColorSelectionCubit>(create: (context) => ColorSelectionCubit()),
        ],
        child: Home(),
      ),
    );
  }
}


