import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';

import '../constants/colors.dart';

class ManageStoreScreen extends StatelessWidget {
  const ManageStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 60),
            child: AppbarCustom(tittle: "Manage Store",center: true,)));
  }
}
