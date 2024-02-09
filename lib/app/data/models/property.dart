class PropertyType {
  final String text;
  final bool isActive;
  PropertyType({required this.text, this.isActive = false});
}

class Property {
  final String distance;
  final String name;
  final String address;
  final String imagePath;
  final String price;
  final String bedrooms;
  final String bathrooms;

  Property({
    required this.distance,
    required this.name,
    required this.address,
    required this.imagePath,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });
}
