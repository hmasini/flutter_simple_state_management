import 'package:flutter/material.dart';
import 'package:test_stack_overflow/screens/overview_screen.dart';
import 'package:provider/provider.dart';

import 'providers/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Bloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: OverviewScreen(),
      ),
    );
  }
}