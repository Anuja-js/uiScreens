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
  List questions = [
    {
      "question": "What types of businesses can use Dukaan\nPremium?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
    {
      "question": "What is your refund policy?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
    {
      "question": "Will there be an automatic charge after the paid trial?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
    {
      "question": "What payment methods do you offer?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
    {
      "question": "What happens when my free trial ends?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
    {
      "question": "What are the terms for the custom domain?",
      "ans": '''Dukaan caters to a wide variety of sellers. Be it a
small grocery store or a big legacy brand - anyone
who wants to sell their products/services online -
Dukaan is the perfect platform for you.''',
    },
  ];
  bool isPress = false;

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
                        boxShadow: const [
                          BoxShadow(
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
                  const Positioned(
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
              const Padding(
                padding: EdgeInsets.only(top: 120, left: 15, bottom: 20),
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
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(15),
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
                                style: const TextStyle(
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
              const Divider(
                height: 50,
                thickness: 4,
                color: greyborder,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  "What is Dukaan Premium?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blackHead,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: black,
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/youtube.png",
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
              const Divider(
                height: 45,
                thickness: 4,
                color: greyborder,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Frequently asked questions",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blackHead,
                    fontSize: 15,
                  ),
                ),
              ),
              ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              questions[index]["question"].toString(),
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackHead,
                                fontSize: 12,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  isPress = !isPress;
                                  setState(() {});
                                },
                                icon: isPress == true && index==0
                                    ? const Icon(
                                        Icons.minimize_outlined,
                                        color: blackHead,
                                      )
                                    : const Icon(
                                        Icons.add,
                                        color: blackHead,
                                      ))
                          ],
                        ),
                        if(index==0)TextCustom(
                            color: greytext,
                            text: isPress == true
                                ? questions[index]["ans"].toString()
                                : ""),
                        sh10,
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: greyborder,
                        ),
                      ],
                    );
                  },
                  itemCount: questions.length),
              const Divider(
                height: 45,
                thickness: 4,
                color: greyborder,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Need help? Get in touch",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blackHead,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 55),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: greytext,
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.messenger_outline_outlined),
                          sh10,
                          TextCustom(
                            color: blackHead,
                            text: "Live Chat",
                            size: 12,
                          )
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 55),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(
                          color: greytext,
                          width: 0.3,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.phone_outlined),
                          sh10,
                          TextCustom(
                            color: blackHead,
                            text: "Phone Call",
                            size: 12,
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: greyBottom, // Border color
              width: 1.0, // Border width
            ),
          ),
        ),
        child: BottomAppBar(
          color: white,
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: TextCustom(
                    color: blueApp,
                    text: "Select Domain",
                    size: 13,
                  )),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  decoration: const BoxDecoration(
                    color: blueApp,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: TextCustom(
                    color: white,
                    text: "Get Premium",
                    size: 13,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
