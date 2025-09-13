class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.category,
  });
}

// Dummy product data
final List<Product> dummyProducts = [
  Product(
    id: 'p1',
    name: 'Classic Armchair',
    price: 120.0,
    image: 'assets/images/armchair.png',
    category: 'Furniture',
  ),
  Product(
    id: 'p2',
    name: 'Modern Sofa',
    price: 450.0,
    image: 'assets/images/sofa.png',
    category: 'Furniture',
  ),
  Product(
    id: 'p3',
    name: 'Wooden Coffee Table',
    price: 200.0,
    image: 'assets/images/coffee_table.png',
    category: 'Furniture',
  ),
  Product(
    id: 'p4',
    name: 'Minimalist Lamp',
    price: 80.0,
    image: 'assets/images/lamp.png',
    category: 'Lighting',
  ),
];