import 'package:flutter/material.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../constants/colors.dart';
import '../custom_widgets/small_container.dart';

class ManageStoreScreen extends StatelessWidget {
  const ManageStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Datas =[
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.payment),
        "txt":"Marketing\nDesigns",
        "color":orange1c,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.payment),
        "txt":"Online\nPayments",
        "color":green63,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.settings_rounded),
        "txt":"Discount\nCoupons",
        "color":orangebox,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.people_alt_outlined),
        "txt":"My\nCustomers",
        "color":greenaa,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.settings_overscan_outlined),
        "txt":"Store QR\nCode",
        "color":greybox,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.payments_sharp),
        "txt":"Extra\nCharges",
        "color":voiletbox,
      },
      {
        "image":IconCustom(size: 50, color: white, icon: Icons.notes_rounded),
        "txt":"Oder\nForm",
        "color":pinkbox,
      },

    ];
    return Scaffold(
        backgroundColor: greyf5,
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 60),
            child: AppbarCustom(tittle: "Manage Store",center: true,)),
    body:  GridView.count(
padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
      childAspectRatio: 01.27,
      shrinkWrap: true,
      children: List.generate(Datas.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: white,
              borderRadius:
              BorderRadius.all(Radius.circular(15.0),),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            ContainerSmall(color: Datas[index]["color"], icon: Datas[index]["image"],
            ),
              sh10,
              TextCustom(color: black, text: Datas[index]["txt"])
            ],),
          ),
        );
      },),
    ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        height: 80,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconCustom(size: 35, color: greyBottom, icon: Icons.home_outlined),
            TextCustom(color: greyBottom, text: "Home")
          ],),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,children: [
            IconCustom(size: 35, color: greyBottom, icon: Icons.collections_bookmark_outlined),
            TextCustom(color: greyBottom, text: "Oders")
          ],),
          Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            IconCustom(size: 35, color: greyBottom, icon: Icons.grid_view_rounded),
            TextCustom(color: greyBottom, text: "Products")
          ],),
          Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            IconCustom(size: 35, color: blueApp, icon: Icons.grid_view_rounded),
            TextCustom(color: blueApp, text: "Manage")
          ],),
          Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            IconCustom(size: 35, color: greyBottom, icon: Icons.perm_identity_outlined),
            TextCustom(color: greyBottom, text: "Account")
          ],),
        ],),
      ),
    );
  }
}


