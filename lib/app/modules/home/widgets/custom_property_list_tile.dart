import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/app/data/models/property.dart';
import 'package:home_rent/app/theme/colors.dart';
import 'package:home_rent/app/theme/fonts.dart';
import 'package:home_rent/app/theme/sizes.dart';

class CustomPropertyListTile extends StatelessWidget {
  final Property property;
  const CustomPropertyListTile({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxHeight / 7.2,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: maxHeight / 7.2,
            height: maxHeight / 7.2,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              image: DecorationImage(
                  image: AssetImage(property.imagePath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const Gap(24.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                property.name,
                style: ralewayMedium.copyWith(fontSize: 16),
              ),
              const Gap(8.0),
              Text(
                property.price,
                style: ralewayRegular.copyWith(
                  fontSize: 12,
                  color: primaryColor,
                ),
              ),
              const Gap(8.0),
              Row(
                children: [
                  Icon(
                    Icons.bed,
                    color: greyColor,
                  ),
                  const Gap(4.0),
                  Text(property.bedrooms,
                      style: ralewayRegular.copyWith(fontSize: 12)),
                  const Gap(12.0),
                  Icon(
                    Icons.bathtub,
                    color: greyColor,
                  ),
                  const Gap(4.0),
                  Text(property.bathrooms,
                      style: ralewayRegular.copyWith(fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
