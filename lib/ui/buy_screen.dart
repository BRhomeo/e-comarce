import 'package:e_project/main.dart';
import 'package:e_project/models/cato_model.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  ScrollController conroller = ScrollController();
  int totalPrince = 0;
  List<String> catoList = [];
  List<List> itemList = [];
  List<List> priceList = [];

//0 non - 1 visa - 2 bitcoin
  int payType = 0;
  @override
  void initState() {
    for (var item in cardList) {
      if (catoList.contains(item.catoName)) {
        int index = catoList.indexOf(item.catoName);

        itemList.elementAt(index).add(item.itemNAme);
        priceList.elementAt(index).add(item.price);
        totalPrince += item.price;
      } else {
        catoList.add(item.catoName);
        itemList.add([item.itemNAme]);
        priceList.add([item.price]);
        totalPrince += item.price;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                controller: conroller,
                shrinkWrap: true,
                itemCount: catoList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              catoList[index],
                              style: TextStyle(
                                  fontSize: 25,
                                  color: ThemeData.light().primaryColor),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              controller: conroller,
                              shrinkWrap: true,
                              itemCount: itemList[index].length,
                              itemBuilder: (context, index2) {
                                var name = itemList[index][index2];
                                var price = priceList[index][index2];
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text(name + '-'),
                                      Text(price.toString()),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            itemList[index].removeAt(index2);
                                            priceList[index].removeAt(index2);

                                            cardList.removeWhere((element) =>
                                                element.itemNAme == name);

                                            totalPrince -=
                                                int.parse(price.toString());
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          size: 15,
                                        ),
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                );
                              }),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    showModalBottomSheet(
                        context: context,
                        builder: (contaxt) {
                          return Column(
                            children: [
                              Text(
                                'Choose pay Method',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: ThemeData.light().primaryColor),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (contaxt) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Form(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/visaMasterCard.png',
                                                  height: 100,
                                                  width: 150,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Card Number',
                                                            prefixIcon: Icon(Icons
                                                                .credit_card),
                                                            hintStyle: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .grey),
                                                            )),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 200,
                                                      child: TextFormField(
                                                        decoration:
                                                            const InputDecoration(
                                                                hintText:
                                                                    'Expiry date (MM/YY)',
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Colors.grey),
                                                                )),
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    SizedBox(
                                                      width: 100,
                                                      child: TextFormField(
                                                        decoration:
                                                            const InputDecoration(
                                                                hintText:
                                                                    'CVV...',
                                                                hintStyle: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Colors.grey),
                                                                )),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Confirm'))
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Visa/MasterCard',
                                        style: TextStyle(fontSize: 32),
                                      ),
                                      Spacer(),
                                      Icon(Icons.navigate_next),
                                    ],
                                  ),
                                ),
                              ),

                              //!bitcoin
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (contaxt) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Form(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/bitcoin.png',
                                                  height: 100,
                                                  width: 150,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Wallet Address',
                                                            prefixIcon: Icon(
                                                                Icons.paste),
                                                            hintStyle: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .grey),
                                                            )),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/qr.png',
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                                    const Text(
                                                        'Click on the QR mode in your \n wallet')
                                                  ],
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Confirm'))
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Bitcoin',
                                        style: TextStyle(fontSize: 32),
                                      ),
                                      Spacer(),
                                      Icon(Icons.navigate_next),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Text('Buy All = $totalPrince'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
