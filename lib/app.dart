import 'package:countercubit/view/counter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterPage(),
        );
}
