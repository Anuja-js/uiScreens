import 'package:flutter/material.dart';
import 'package:uiscreens/screens/additional_information.dart';
import 'package:uiscreens/screens/catalogue_screen.dart';
import 'package:uiscreens/screens/dukaan_premium.dart';
import 'package:uiscreens/screens/manage_storage.dart';
import 'package:uiscreens/screens/oder_screen.dart';
import 'package:uiscreens/screens/payments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: CatalogueScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
