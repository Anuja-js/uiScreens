import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';
import 'package:uiscreens/custom_widgets/custom_container.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 60),
      child: AppbarCustom(
        tittle: "Oder #1688068",
        center: true,
        icon: Icon(Icons.arrow_back),
      ),
    ),
    body:  SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextCustom(color: blackHead, text: "May 31, 05:42 PM",size: 15,)),
                  CircleAvatar(backgroundColor: blueApp,radius: 8,),sw10,
                  TextCustom(color: greytext, text: "Delivered",size: 15,)
                ],
              ),
              Divider(height: 20,thickness: 1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextCustom(color: greytext, text: "1 ITEM",size: 15,)),
                  Icon(Icons.receipt_outlined,color: blueApp,size: 26,),sw10,
                  TextCustom(color: blueApp, text: "RECEIPT",size: 15,)
                ],
              ),
              sh20,
              sh10,
              Row(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,height: 80,

                     decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: greyBottom,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),image: DecorationImage(image: AssetImage("assets/images/blue.png",),fit: BoxFit.cover)
                      ),

                  ),
                  sw25,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextCustom(color: black, text: "Explore | Men | Navy Blue",size: 14,),
                      sh10,
                      TextCustom(color: greytext, text: "1 piece",size: 12,),sh5,
                      TextCustom(color: greytext, text: "Size: XL",size: 14,),
                      sh10,
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
height: 25,width: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffe8f0f2),
                                border: Border.all(
                                  color: blueApp,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child:
                              Center(
                                child: TextCustom(
                                  color: blueApp,
                                  text: "1",
                                  size: 12,
                                ),
                              )
                          ),sw5,
                          TextCustom(color: black, text: "x ₹799",size: 15,)
                        ],
                      ),

                    ],
                  ),
                ],
              ),
              Divider(height: 30,thickness: 1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(color: greytext, text: "Item Total",size: 15,),

                  TextCustom(color: blackHead, text: "₹799",size: 15,),

                ],
              ),sh10,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(color: greytext, text: "Delivery",size: 15,),

                  TextCustom(color: greencontainer, text: "FREE",size: 15,),

                ],
              ),sh10,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(color: black, text: "Grand Total",size: 15,),

                  TextCustom(color: black, text: "₹799",size: 15,),

                ],
              ),
              Divider(height: 30,thickness: 1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextCustom(color: greytext, text: "CUSTOMER DETAILS",size: 15,)),
                  Icon(Icons.share_outlined,color: blueApp,size: 20,),sw10,
                  TextCustom(color: blueApp, text: "SHARE",size: 15,)
                ],
              ),
              sh20,
              TextCustom(color: black, text: "Deepa",size: 15,),
              sh5,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextCustom(color: greytext, text: "+91-7829000484",size: 15,)),
                  Image(image:AssetImage("assets/images/wp.png",),width: 85,height: 60,)
                ],
              ),
              sh20,
              TextCustom(color: black, text: "Address",size: 15,),
              sh10,
              TextCustom(color: blackHead, text: "D 1101 Chartered Beverly\nHill ,Subramanyapuram P.O",size: 15,),
              sh20,
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: TextCustom(color: black, text: "City",size: 15,)),
                  Expanded(child: TextCustom(color: black, text: "Pincode",size: 15,)),
                ],
              ), Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child:
                  TextCustom(color: blackHead, text: "Bangalore",size: 15,)),
                  Expanded(child:
                  TextCustom(color: blackHead, text: "560061",size: 15,)),
                ],
              ),
              sh20,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextCustom(color: black, text: "Payment",size: 15,),
                      sh10,
                      TextCustom(color: blackHead, text: "Online",size: 15,),
                    ],
                  ),
                  Container(
                      padding:  EdgeInsets.symmetric(
                          vertical: 3, horizontal: 22),
                      decoration: BoxDecoration(
                        color: greyback,
                        border: Border.all(
                          color: greybox,
                          width: 0.2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child:
                      TextCustom(
                        color: greencontainer,
                        text: "PAID",
                        size: 15,
                      )
                  ),
                ],
              ),

              Divider(height: 50,thickness: 1,),
              TextCustom(color: greytext, text: "ADDITINONAL INFORMATION",size: 15,),
              sh20,
              TextCustom(color: black, text: "State",size: 15,),
              sh10,
              TextCustom(color: blackHead, text: "Karnataka",size: 15,),sh20,

              TextCustom(color: black, text: "Email",size: 15,),
              sh10,
              TextCustom(color: blackHead, text: "greeniceaqua@gmail.com",size: 15,),
              Center(
                child: Container(margin: EdgeInsets.symmetric(vertical: 35 ),
                    padding:  EdgeInsets.symmetric(
                        vertical: 15, horizontal: MediaQuery.of(context).size.width/3.1),
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                        color: blueApp,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child:
                        TextCustom(
                          color: blueApp,
                          text: "Share receipt",
                          size: 15,
                        )
                     ),
              ),

            ],
          ),
        ),
      ),
    ),
    );
  }
}
