import 'package:get/get.dart';
import 'package:home_rent/app/data/models/property.dart';

class HomeController extends GetxController {
  List<PropertyType> propertyTypeList = [
    PropertyType(text: 'All', isActive: true),
    PropertyType(text: 'House'),
    PropertyType(text: 'Apartment'),
    PropertyType(text: 'Villa'),
    PropertyType(text: 'Office'),
  ];

  List<Property> propertyListForCard = [
    Property(
      distance: '2.5 km',
      name: 'Modern House',
      address: 'Jl. Raya Kuta, Bali',
      imagePath: 'assets/dreamsville.png',
      price: 'Rp 2.500.000 / Year',
      bedrooms: '3 Bedrooms',
      bathrooms: '2 Bathrooms',
    ),
    Property(
      distance: '3.5 km',
      name: 'Ascot House',
      address: 'Jl. Raya Kuta, Bali',
      imagePath: 'assets/ascot.png',
      price: 'Rp 3.500.000 / Year',
      bedrooms: '4 Bedrooms',
      bathrooms: '3 Bathrooms',
    ),
    Property(
      distance: '4.5 km',
      name: 'The Little Copse',
      address: 'Jl. Raya Kuta, Bali',
      imagePath: 'assets/little-copse.png',
      price: 'Rp 4.500.000 / Year',
      bedrooms: '5 Bedrooms',
      bathrooms: '4 Bathrooms',
    ),
  ];

  List<Property> propertyListForListTile = [
    Property(
      distance: '2 km',
      name: 'Orchad House',
      address: 'Dummy Address 1',
      imagePath: 'assets/orchad.png',
      price: 'Rp 1.000.000 / Year',
      bedrooms: '4 Bedrooms',
      bathrooms: '4 Bathrooms',
    ),
    Property(
      distance: '3.1 km',
      name: 'Sea Breezes House',
      address: 'Dummy Address 2',
      imagePath: 'assets/sea-breezes.png',
      price: 'Rp 3.200.000 / Year',
      bedrooms: '3 Bedrooms',
      bathrooms: '2 Bathrooms',
    ),
    Property(
      distance: '4 km',
      name: 'The Hollies House',
      address: 'Dummy Address 3',
      imagePath: 'assets/the-hollies.png',
      price: 'Rp 4.000.000 / Year',
      bedrooms: '4 Bedrooms',
      bathrooms: '2 Bathrooms',
    ),
  ];
}
