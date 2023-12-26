import 'package:flutter/material.dart';
import 'package:hello_flutter/brand/add_brand.dart';
import 'package:hello_flutter/brand/brand_screen.dart';
import 'package:hello_flutter/reslease/reslease_screen.dart';
import 'package:hello_flutter/share/app_drawer.dart';

import 'configuration/add_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phát hành',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.blue,
        ),
      ),
      home: const AppDrawer(),
      routes: {
        "addBrand": (context) => const AddBrand(),
        "addConfig": (context) => const AddConfig(),
        "appDrawer": (context) => const AppDrawer(),
      },
    );
  }
}
