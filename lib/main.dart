import 'package:flutter/material.dart';
import 'package:uiscreens/screens/additional_information.dart';
import 'package:uiscreens/screens/manage_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: ManageStoreScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
