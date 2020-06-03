import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controllers/home_controller.dart';
import 'package:todo_list/pages/home/home_page.dart';

/// by @lucas-marciano on 03/06/2020
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeController>(
          create: (_) => HomeController(),
        ),
      ],
      child: MaterialApp(
        title: "Flutter Task",
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage(),
      ),
    );
  }
}
