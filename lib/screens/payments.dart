import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';
import 'package:uiscreens/custom_widgets/custom_container.dart';
import 'package:uiscreens/custom_widgets/icon_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';
import 'package:uiscreens/models/order.dart';

// ignore: must_be_immutable
class PaymentScreen extends StatelessWidget {
   PaymentScreen({Key? key}) : super(key: key);
  List<Orders> order=[
    Orders("Order #1688068","Jul 12, 02:06 PM","₹799","₹799 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1457741","Apr 26, 07:47 AM","₹397.4","₹397.4 deposited to 58860200000138","Successful","assets/images/mug.jpeg"),
    Orders("Order #1408896","Apr 11, 10:54 PM","₹686.42 ","₹686.42 deposited to 58860200000138","Successful","assets/images/foldedblue.jpg"),
    Orders("Order #1369633","Apr 2, 11:29 AM","₹1123.5","₹1123.5 deposited to 58860200000138","Successful","assets/images/foldedblue.jpg"),
    Orders("Order #1370125","Apr 2, 11:29 AM","₹1722.75","₹1722.75 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1370568","Apr 1, 11:19 AM","₹884.17","₹884.17 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1359971","Apr 1, 10:37 AM","₹599.25","₹599.25 deposited to 58860200000138","Successful","assets/images/foldedblue.jpg"),
    Orders("Order #1265103","Mar 6, 01:26 PM","₹2,297","₹2297 deposited to 58860200000138","Successful","assets/images/white.jpeg"),
    Orders("Order #1173537","Feb 22, 10:04 PM","₹599.25","₹599.25 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1176731","Feb 21, 01:25 PM","₹524.25","₹524.25 deposited to 58860200000138","Successful","assets/images/foldedblue.jpg"),
    Orders("Order #1174245","Feb 21, 10:20 AM","₹699","₹699 deposited to 58860200000138","Successful","assets/images/white.jpeg"),
    Orders("Order #1177731","Feb 20, 9:54 AM","₹1123.5","₹1123.5 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1174282","Feb 19, 10:47 AM","₹799","₹799 deposited to 58860200000138","Successful","assets/images/red.jpeg"),
    Orders("Order #1174435","Feb 18, 12:08 PM","₹524.25","₹524.25 deposited to 58860200000138","Successful","assets/images/white.jpeg"),
    Orders("Order #1164892","Feb 13, 7:57 AM","₹524.25","₹524.25 deposited to 58860200000138","Successful","assets/images/white.jpeg"),

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: AppbarCustom(
          tittle: "Payments",
          icon: const Icon(Icons.arrow_back_outlined),
          trailing: Icons.info_outline_rounded,
          center: true,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: greyborder),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Transaction Limit",
                        style: TextStyle(
                            color: blackHead,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      sh5,
                      TextCustom(
                          color: blackcontent,
                          text:
                              "A free limit up to which you will receive\nthe online payments directly in your bank"),
                      sh20,
                      LinearProgressIndicator(
                        minHeight: 8,
                        value: 1.6 / 5,
                        backgroundColor: greyborder,
                        valueColor: const AlwaysStoppedAnimation<Color>(blueApp),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      sh5,
                      TextCustom(
                          color: greybox, text: "36,668 left out of ₹50,000"),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: blueApp,
                            borderRadius: BorderRadius.circular(5)),
                        padding:
                            const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: TextCustom(
                          color: white,
                          text: "Increase limit",
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Default Method",
                      style: TextStyle(
                          color: blackHead,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )),
                    TextCustom(
                      color: greyrow,
                      text: "Online Payments",
                    ),
                    sw5,
                    IconCustom(
                        size: 18,
                        color: greybox,
                        icon: Icons.arrow_forward_ios_outlined)
                  ],
                ),
                sh10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                        child: Text(
                      "Payment Profile",
                      style: TextStyle(
                          color: blackHead,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )),
                    TextCustom(
                      color: greyrow,
                      text: "Bank Account",
                    ),
                    sw5,
                    IconCustom(
                        size: 18,
                        color: greybox,
                        icon: Icons.arrow_forward_ios_outlined)
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      "Payment Overview",
                      style: TextStyle(
                          color: blackHead,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                    TextCustom(
                      color: greyrow,
                      text: "Life Time",
                    ),
                    sw5,
                    IconCustom(
                        size: 22,
                        color: greybox,
                        icon: Icons.keyboard_arrow_down_outlined)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainer(
                        orangecontainer,
                        const Text(
                          "AMOUNT ON HOLD",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        const Text(
                          "₹0",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                    CustomContainer(
                        greencontainer,
                        const Text(
                          "AMOUNT RECEIVED",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        const Text(
                          "₹13,332",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const Text(
                  "Transactions",
                  style: TextStyle(
                      color: blackHead,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 22),

                      label: TextCustom(
                        color: greytext,
                        text: "On hold",
                      )),
                  Chip(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),

                    label: TextCustom(
                        color: white,
                        text: "Payouts(15)",
                      ),backgroundColor: blueApp,),
                  Chip(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    label: TextCustom(
                      color: greytext,
                      text: "Refunds",
                    ),
                  ),
                ],
              ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (  context,index){
                  return Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(
                          width: 50,
                          margin: EdgeInsets.only(top: 5,bottom: 15,),
                          height: 50,
                          child: Image.asset(order[index].imagePath.toString(),fit: BoxFit.fill,),
                        ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order[index].orderNumber.toString(),
                                style: TextStyle(
                                    color: blackHead,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              TextCustom(color: greytext, text:    order[index].orderDate.toString(),size: 16,)
                            ],
                          ),sw25,
                          Column(  crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextCustom(color: blueApp, text:    order[index].orderAmount.toString(),size: 20,),
                              Row(
                                children: [
                                  CircleAvatar(backgroundColor: greencontainer,radius: 6,),sw10,
                                  TextCustom(color: greytext, text:    order[index].orderStatus.toString(),size: 16,),
                                ],
                              )

                            ],
                          )



                      ],),
                      TextCustom(color: greytext, text:order[index].orderTo.toString(),size: 12, )
                    ],
                  );
                }, separatorBuilder: ( context,index){
                  return Divider(height: 20,thickness: 1,);

                }, itemCount: order.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
