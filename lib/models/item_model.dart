class ItemModel {
  String itemName, imgPath;

  List<String> listOfTypes;
  List<int> listOfPrice;

  ItemModel(
      {required this.itemName,
      required this.imgPath,
      required this.listOfTypes,
      required this.listOfPrice});
}
