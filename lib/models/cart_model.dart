class CartModel {
  final String name;
  final String image;
  final String price;
  final String qty;

  CartModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.qty});
}

List<CartModel> cartList = [
  CartModel(
      name: 'Minimal Stand',
      image: 'item1.png',
      price: 'EGP 1250.00',
      qty: '01'),
  CartModel(
      name: 'Coffee Table',
      image: 'item2.png',
      price: 'EGP 1000.00',
      qty: '01'),
  CartModel(
      name: 'Minimal Desk',
      image: 'item3.png',
      price: 'EGP 2500.00',
      qty: '01'),
];
