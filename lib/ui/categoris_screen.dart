import 'dart:developer';

import 'package:e_project/main.dart';
import 'package:e_project/models/cart_model.dart';
import 'package:e_project/models/cato_model.dart';
import 'package:e_project/models/item_model.dart';
import 'package:flutter/material.dart';

class CatoScreen extends StatefulWidget {
  final CatoModel items;
  const CatoScreen({Key? key, required this.items}) : super(key: key);

  @override
  _CatoScreenState createState() => _CatoScreenState();
}

class _CatoScreenState extends State<CatoScreen> {
  var droplistVal = [];
  var droplistprceVal = [];

  @override
  void initState() {
    super.initState();

    for (var item in widget.items.items) {
      droplistVal.add(item.listOfTypes[0]);
      droplistprceVal.add(item.listOfPrice[0]);
    }
  }

  String selected = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.items.catoName),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: widget.items.items.length,
            itemBuilder: (context, index) {
              ItemModel item = widget.items.items[index];
              var listOfTypes = item.listOfTypes;
              var listOfPrice = item.listOfPrice;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          item.imgPath,
                          width: 100,
                          height: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item.itemName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          value: droplistVal[index],
                          items: listOfTypes
                              .map(
                                (e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(
                                      '$e - ${listOfPrice[listOfTypes.indexOf(e)]}'),
                                ),
                              )
                              .toList(), // ${listOfPrice}
                          onChanged: (val) => setState(() {
                            droplistVal[index] = val ?? droplistVal[index];
                            droplistprceVal[index] = listOfPrice[
                                        listOfTypes.indexOf(val ?? '')] ==
                                    -1
                                ? droplistprceVal[index]
                                : listOfPrice[listOfTypes.indexOf(val ?? '')];
                          }),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              log('${widget.items.items[index].itemName} - ${droplistVal[index]} - ${droplistprceVal[index]}');

                              cardList.add(CardModel(
                                  catoName: widget.items.items[index].itemName,
                                  itemNAme: droplistVal[index],
                                  price: droplistprceVal[index]));
                            },
                            icon: const Icon(Icons.shopping_basket_outlined),
                            label: const Text('add to Cart'))
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
