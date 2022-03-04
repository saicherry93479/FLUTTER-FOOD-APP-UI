class CartList {
  late final String name;
  late final String image;
  late final String desc;
  late final String price;
  late final int itemCount;
  late final bool paid;
  CartList(
      {required this.image,
      required this.name,
      required this.desc,
      required this.itemCount,
      required this.paid,
      required this.price});
}
