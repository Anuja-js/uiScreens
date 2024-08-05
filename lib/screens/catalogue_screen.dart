import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/appbar_custom.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  final controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Adjust the length according to the number of tabs
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: TextCustom(
            text: "Catalogue",
            color: white,
            size: 18,
            center: true,
          ),
          actions: [
            Icon(Icons.search, color: white, size: 20),
          ],
          centerTitle: true,elevation: 0,backgroundColor: blueApp,
          bottom: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 60), child: Container(
            color: blueApp,
            child: TabBar(
              tabs: [
                Tab(text: "Products",),
                Tab(text: "Categories",),
              ],
              labelColor: white,
              unselectedLabelColor: Colors.white38,
              indicatorColor: white,
            ),
          ),),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/1st.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            sw10,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    TextCustom(
                                      color: black,
                                      text: "Couch Potato | Women...",
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_outlined,
                                      color: black26,
                                      size: 23,
                                    ),
                                  ],
                                ),
                                sh5,
                                TextCustom(
                                  color: greytext,
                                  text: "1 piece",
                                  size: 12,
                                ),
                                sh5,
                                TextCustom(
                                  color: black,
                                  text: "799",
                                  size: 15,
                                ),
                                sh5,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextCustom(
                                      color: greencontainer,
                                      text: "In stock",
                                      size: 12,
                                    ),
                                    AdvancedSwitch(
                                      controller: controller,
                                      activeColor: blueLight,
                                      inactiveColor: blueLight,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      width: 55.0,
                                      height: 22.0,
                                      enabled: true,
                                      thumb: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: const BoxDecoration(
                                          color: blueApp,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          thickness: 1,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                size: 20,
                                color: black26,
                              ),
                              sw5,
                              TextCustom(
                                color: greytext,
                                text: "Share Product",
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),

      ),
    );
  }
}
