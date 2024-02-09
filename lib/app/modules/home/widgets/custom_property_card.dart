import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/app/data/models/property.dart';
import 'package:home_rent/app/theme/colors.dart';
import 'package:home_rent/app/theme/fonts.dart';
import 'package:home_rent/app/theme/sizes.dart';

class CustomPropertyCard extends StatelessWidget {
  final Property property;
  const CustomPropertyCard({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Container(
            width: maxWidth / 2.3,
            height: maxHeight / 3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(property.imagePath),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: maxWidth / 2.3,
              height: maxHeight / 3,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [Colors.black12, Colors.black54],
                  begin: Alignment(0, 0.2),
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.place_outlined,
                    color: whiteColor,
                  ),
                  const Gap(4.0),
                  Text(
                    property.distance,
                    style: ralewayRegular.copyWith(
                        fontSize: 12, color: whiteColor),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  property.name,
                  style: ralewayMedium.copyWith(
                    fontSize: 16,
                    color: whiteColor,
                  ),
                ),
                const Gap(2.0),
                Text(
                  property.address,
                  style: ralewayRegular.copyWith(
                    fontSize: 12,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
