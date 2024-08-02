import 'package:flutter/material.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

class DukaanPremiumScreen extends StatefulWidget {
  const DukaanPremiumScreen({Key? key}) : super(key: key);

  @override
  State<DukaanPremiumScreen> createState() => _DukaanPremiumScreenState();
}

class _DukaanPremiumScreenState extends State<DukaanPremiumScreen> {
  List datas = [
    {
      "tittle": "Custom domain name",
      "subtittle":
          "Get your own custom domain and build\nyour brand on the internet.",
      "image": "assets/images/1.png"
    },
    {
      "tittle": "Verified seller badge",
      "subtittle":
          "Get green verified badge under your\nstore name and build trust.",
      "image": "assets/images/2.png"
    },
    {
      "tittle": "Dukaan for PC",
      "subtittle":
          "Access all the exclusive premium\nfeatures on Dukaan for PC.",
      "image": "assets/images/3.png"
    },
    {
      "tittle": "Priority support",
      "subtittle":
          "Get your questions resolved with our\npriority customer support.",
      "image": "assets/images/4.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppbarCustom(
          tittle: "Dukaan Premium",
          center: true,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 125,
                    color: blueApp,
                  ),
                  Positioned(
                    top: 10,
                    left: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: white, // White background for the card
                        boxShadow: [
                          const BoxShadow(
                            color: black26,
                            blurRadius: 8.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/dukaan-logo.webp',
                            height: 80,
                            fit: BoxFit.fill,
                          ), // Replace with your logo asset
                          const Text(
                            "Get Dukaan Premium for just\n₹4,999/year",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: blackHead),
                          ),
                          sh10,
                          TextCustom(
                            text:
                                "All the advanced features for scaling your\n business.",
                            color: greytext,
                            size: 12,
                            center: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 62,
                    right: 120,
                    child: Text(
                      "PREMIUM",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blueApp,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 15, bottom: 20),
                child: Text(
                  "Features",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blackHead,
                    fontSize: 18,
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: datas.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: blueApp, // Border color
                                  width: 2.0, // Border width
                                ),
                                color: white),
                            child: Image.asset(
                              datas[index]["image"].toString(),
                              width: 10,
                              height: 10,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                datas[index]["tittle"].toString(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackHead,
                                  fontSize: 14,
                                ),
                              ),
                              sh5,
                              TextCustom(
                                  color: greytext,
                                  text: datas[index]["subtittle"].toString())
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              Divider(
                height: 50,
                thickness: 4,
                color: greyborder,
              ),
              Text(
                "What is Dukaan Premium?",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: blackHead,
                  fontSize: 15,
                ),
              ),
              Divider(
                height: 50,
                thickness: 4,
                color: greyborder,
              ),
              Text(
                "Frequently asked questions",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: blackHead,
                  fontSize: 15,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Text(
                      "Frequently asked questions",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackHead,
                        fontSize: 12,
                      ),),
                      TextCustom(
                          color: greytext,
                          text: datas[index]["subtittle"].toString())
                    ],);
                  },
                  separatorBuilder: (context, index) {
                    return  Divider(
                      height: 50,
                      thickness: 1,
                      color: greyborder,
                    );
                  },
                  itemCount: 8)
            ],
          ),
        ),
      ),
    );
  }
}
