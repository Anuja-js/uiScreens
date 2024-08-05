import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiscreens/constants/colors.dart';
import 'package:uiscreens/custom_widgets/text_custom.dart';

import '../custom_widgets/appbar_custom.dart';
import '../custom_widgets/icon_custom.dart';
import '../custom_widgets/row_custom.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ValueNotifier<bool>(false);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: AppbarCustom(center: true,
          icon: IconCustom(size: 30, color: white, icon: Icons.arrow_back_outlined),
          tittle: "Additional Information",
        ),
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          RowCustom(
            midText: "Share Dukaan App",
            iconleading: IconCustom(
                size: 30, color: greyIcon, icon: Icons.share_outlined),
            iconTrailing: IconCustom(
                size: 20,
                color: greyIcon,
                icon: Icons.arrow_forward_ios_outlined),
          ),
          sh10,
          RowCustom(
            midText: "Change Language",
            iconleading: IconCustom(
                size: 30,
                color: greyIcon,
                icon: Icons.messenger_outline_outlined),
            iconTrailing: IconCustom(
                size: 20,
                color: greyIcon,
                icon: Icons.arrow_forward_ios_outlined),
          ),
          sh10,
          RowCustom(
            midText: "WhatsApp Chat Support",
            iconleading: IconCustom(
                size: 30, color: greyIcon, icon: FontAwesomeIcons.whatsapp),
            iconTrailing: AdvancedSwitch(
              controller: controller,
              activeColor: blueLight,
              inactiveColor: blueLight,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              width: 55.0,
              height: 22.0,
              enabled: true,
              thumb: Container(
                width: 100.0, // Diameter of the circular thumb
                height: 100.0,
                decoration: const BoxDecoration(
                  color: blueApp,
                  shape: BoxShape.circle,
                ),
              ),
              // disabledOpacity: 0.4,
            ),
          ),
          sh10,
          RowCustom(
            midText: "Privacy Policy",
            iconleading: IconCustom(
                size: 30, color: greyIcon, icon:Icons.shopping_bag_outlined),
            iconTrailing: null,
          ),
          sh10,
          RowCustom(
            midText: "Rate Us",
            iconleading: IconCustom(
                size: 30, color: greyIcon, icon: Icons.star_border_outlined),
            iconTrailing: null,
          ),
          sh10,
          RowCustom(
            midText: "Sign Out",
            iconleading: IconCustom(
                size: 30, color: greyIcon, icon: Icons.logout_outlined),
            iconTrailing: null,
          ) ,
            const Spacer(),
            Center(child: Column(
              children: [
                TextCustom(color: greyversion, text: "version"),
                sh5,
                TextCustom(color: grey90, text: "2.4.2"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
