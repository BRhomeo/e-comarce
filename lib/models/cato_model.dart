import 'package:e_project/models/item_model.dart';

class CatoModel {
  String catoName, imgPath;
  List<ItemModel> items;

  CatoModel(
      {required this.catoName, required this.imgPath, required this.items});
}
