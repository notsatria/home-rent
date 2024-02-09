import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:home_rent/app/modules/home/widgets/custom_property_card.dart';
import 'package:home_rent/app/modules/home/widgets/custom_property_list_tile.dart';
import 'package:home_rent/app/modules/home/widgets/custom_text_chip.dart';
import 'package:home_rent/app/theme/colors.dart';
import 'package:home_rent/app/theme/fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Gap(MediaQuery.of(context).padding.top),
            header(),
            const Gap(22.0),
            searchTextField(),
            const Gap(18.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.propertyTypeList
                    .map(
                      (e) => CustomTextChip(
                        text: e.text,
                        isActive: e.isActive,
                      ),
                    )
                    .toList(),
              ),
            ),
            const Gap(27.0),
            Row(
              children: [
                Text(
                  'Near from you',
                  style: ralewayMedium.copyWith(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  'See more',
                  style:
                      ralewayRegular.copyWith(fontSize: 12, color: greyColor),
                ),
              ],
            ),
            const Gap(24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.propertyListForCard
                    .map(
                      (e) => CustomPropertyCard(
                        property: e,
                      ),
                    )
                    .toList(),
              ),
            ),
            const Gap(32.0),
            Row(
              children: [
                Text(
                  'Best for you',
                  style: ralewayMedium.copyWith(fontSize: 16),
                ),
                const Spacer(),
                Text(
                  'See more',
                  style:
                      ralewayRegular.copyWith(fontSize: 12, color: greyColor),
                ),
              ],
            ),
            const Gap(24.0),
            Column(
              children: controller.propertyListForListTile
                  .map((e) => CustomPropertyListTile(property: e))
                  .toList(),
            ),
            Gap(MediaQuery.of(context).padding.top),
          ],
        ),
      ),
    );
  }

  Widget searchTextField() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: lightGreyColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: greyColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                hintText: 'Search address, or near you',
                hintStyle: ralewayRegular.copyWith(fontSize: 12),
              ),
            ),
          ),
        ),
        const Gap(8.0),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: linearGradient,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(Icons.tune, color: whiteColor),
        ),
      ],
    );
  }
}

Widget header() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Location',
        style: ralewayRegular.copyWith(
          fontSize: 12,
          color: greyColor,
        ),
      ),
      const Gap(8.0),
      Row(
        children: [
          Text(
            'Jakarta',
            style: ralewayMedium.copyWith(
              fontSize: 20,
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: greyColor),
          const Spacer(),
          Icon(Icons.menu, color: greyColor),
        ],
      ),
    ],
  );
}
