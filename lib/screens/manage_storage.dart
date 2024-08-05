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
    // ignore: non_constant_identifier_names
    List Datas = [
      {
        "image": "assets/images/im1.png",
        "txt": "Marketing\nDesigns",
        "color": orange1c,
      },
      {
        "image": "assets/images/im2.png",
        "txt": "Online\nPayments",
        "color": green63,
      },
      {
        "image": "assets/images/im3.png",
        "txt": "Discount\nCoupons",
        "color": orangebox,
      },
      {
        "image": "assets/images/im4.png",
        "txt": "My\nCustomers",
        "color": greenaa,
      },
      {
        "image": "assets/images/im5.png",
        "txt": "Store QR\nCode",
        "color": greybox,
      },
      {
        "image": "assets/images/im6.png",
        "txt": "Extra\nCharges",
        "color": voiletbox,
      },
      {
        "image": "assets/images/im7.png",
        "txt": "Order\nForm",
        "color": pinkbox,
      },
    ];
    return Scaffold(
      backgroundColor: greyf5,
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: AppbarCustom(
            tittle: "Manage Store",
            center: true,
          )),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: 01.19,
        shrinkWrap: true,
        children: List.generate(
          Datas.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerSmall(
                          color: Datas[index]["color"],
                          icon: Image.asset(Datas[index]["image"].toString(),fit: BoxFit.cover,),
                        ),
                        Datas[index]["txt"] == "Order\nForm"
                            ? Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: greencontainer,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: TextCustom(
                                    color: white,
                                    text: "NEW",
                                    size: 12,
                                  ),
                                ),
                              )
                            : sw10
                      ],
                    ),
                    sh10,
                    TextCustom(color: black, text: Datas[index]["txt"],size: 15,)
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,shadowColor: black26,
        height: 80,
        color: white,
        child: Container(
          decoration: const BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(color: grey90,width: 0.7))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/b1.png",width: 30,height: 30,),
                  TextCustom(color: greyBottom, text: "Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/b2.png",width: 30,height: 30),
                  TextCustom(color: greyBottom, text: "Orders")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset("assets/images/b3.png",width: 30,height: 30),
                  TextCustom(color: greyBottom, text: "Products")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/b4.png",width: 30,height: 30),
                  TextCustom(color: blueApp, text: "Manage")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/b5.png",width: 30,height: 30),
                  TextCustom(color: greyBottom, text: "Account")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
