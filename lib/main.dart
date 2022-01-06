import 'package:e_project/models/cart_model.dart';
import 'package:e_project/models/cato_model.dart';
import 'package:e_project/models/item_model.dart';
import 'package:e_project/ui/login_screen.dart';
import 'package:flutter/material.dart';

var allItems = [
  //!1
  CatoModel(
      catoName: 'Computer Accessories',
      imgPath: 'assets/computerAcc.png',
      items: [
        ItemModel(
            itemName: 'Ram',
            imgPath: 'assets/ram.jpg',
            listOfTypes: ['16GB', '8GB', '4GB'],
            listOfPrice: [60, 40, 30]),
        ItemModel(
            itemName: 'CPU',
            imgPath: 'assets/cpu.jpg',
            listOfTypes: ['CORE i9', 'CORE i7', 'CORE i5'],
            listOfPrice: [200, 160, 100]),
        ItemModel(
            itemName: 'GPU',
            imgPath: 'assets/gpu.jpg',
            listOfTypes: ['10GB GDDR6', '8GB GDDR6', '4GB GDDR6'],
            listOfPrice: [300, 200, 150]),
      ]),
  //!2
  CatoModel(
      catoName: 'SmartPhone\n Accessories',
      imgPath: 'assets/smartPhoneAcc.jpg',
      items: [
        ItemModel(
            itemName: 'wireLess Charger',
            imgPath: 'assets/wireLessCharger.jpg',
            listOfTypes: ['1 port', '2ports', '3ports'],
            listOfPrice: [20, 40, 55]),
        ItemModel(
            itemName: 'Phone Charger',
            imgPath: 'assets/phoneCharger.jpg',
            listOfTypes: ['Noraml', 'Fast'],
            listOfPrice: [5, 15]),
        ItemModel(
            itemName: 'headphones',
            imgPath: 'assets/headphones.jpg',
            listOfTypes: ['black', 'white'],
            listOfPrice: [50, 50]),
        ItemModel(
            itemName: 'Cover phone',
            imgPath: 'assets/phonCover.jpg',
            listOfTypes: ['black', 'white'],
            listOfPrice: [2, 1]),
        ItemModel(
            itemName: 'headphone',
            imgPath: 'assets/headphone.jpg',
            listOfTypes: ['black', 'white'],
            listOfPrice: [5, 3]),
      ]),

  //!3
  CatoModel(
      catoName: 'Console Accessories',
      imgPath: 'assets/consoleAccessories.jpg',
      items: [
        ItemModel(
            itemName: 'Keyboard',
            imgPath: 'assets/keyboard.jpg',
            listOfTypes: ['only keyboard', 'Combo'],
            listOfPrice: [20, 30]),
        ItemModel(
            itemName: 'Headset',
            imgPath: 'assets/headset.jpg',
            listOfTypes: ['black', 'white', 'red'],
            listOfPrice: [10, 5, 5]),
        ItemModel(
            itemName: 'Chair',
            imgPath: 'assets/chair.jpg',
            listOfTypes: ['Black', 'Red', 'Green'],
            listOfPrice: [70, 70, 70]),
        ItemModel(
            itemName: 'PS5 Ccontroller',
            imgPath: 'assets/psCcontroller.jpg',
            listOfTypes: ['Black', 'White'],
            listOfPrice: [50, 50]),
        ItemModel(
            itemName: 'Xbox Ccontroller',
            imgPath: 'assets/xboxCcontroller.jpg',
            listOfTypes: ['Black', 'White'],
            listOfPrice: [50, 50]),
      ]),

  //!!!!!!!!!!!!!
  CatoModel(
      catoName: 'Computer Accessories',
      imgPath: 'assets/computerAcc.png',
      items: [
        ItemModel(
            itemName: 'Ram',
            imgPath: 'assets/ram.jpg',
            listOfTypes: ['16GB', '8GB', '4GB'],
            listOfPrice: [60, 40, 30]),
        ItemModel(
            itemName: 'CPU',
            imgPath: 'assets/cpu.jpg',
            listOfTypes: ['CORE i9', 'CORE i7', 'CORE i5'],
            listOfPrice: [200, 160, 100]),
        ItemModel(
            itemName: 'GPU',
            imgPath: 'assets/gpu.jpg',
            listOfTypes: ['10GB GDDR6', '8GB GDDR6', '4GB GDDR6'],
            listOfPrice: [300, 200, 150]),
      ]),
  CatoModel(
      catoName: 'Computer Accessories',
      imgPath: 'assets/computerAcc.png',
      items: [
        ItemModel(
            itemName: 'Ram',
            imgPath: 'assets/ram.jpg',
            listOfTypes: ['16GB', '8GB', '4GB'],
            listOfPrice: [60, 40, 30]),
        ItemModel(
            itemName: 'CPU',
            imgPath: 'assets/cpu.jpg',
            listOfTypes: ['CORE i9', 'CORE i7', 'CORE i5'],
            listOfPrice: [200, 160, 100]),
        ItemModel(
            itemName: 'GPU',
            imgPath: 'assets/gpu.jpg',
            listOfTypes: ['10GB GDDR6', '8GB GDDR6', '4GB GDDR6'],
            listOfPrice: [300, 200, 150]),
      ]),
  CatoModel(
      catoName: 'Computer Accessories',
      imgPath: 'assets/computerAcc.png',
      items: [
        ItemModel(
            itemName: 'Ram',
            imgPath: 'assets/ram.jpg',
            listOfTypes: ['16GB', '8GB', '4GB'],
            listOfPrice: [60, 40, 30]),
        ItemModel(
            itemName: 'CPU',
            imgPath: 'assets/cpu.jpg',
            listOfTypes: ['CORE i9', 'CORE i7', 'CORE i5'],
            listOfPrice: [200, 160, 100]),
        ItemModel(
            itemName: 'GPU',
            imgPath: 'assets/gpu.jpg',
            listOfTypes: ['10GB GDDR6', '8GB GDDR6', '4GB GDDR6'],
            listOfPrice: [300, 200, 150]),
      ]),
];

List<CardModel> cardList = [];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //00a898

        primarySwatch: const MaterialColor(
          0xff00a898,
          <int, Color>{
            50: Color(0xFFE3F2FD),
            100: Color(0xFFBBDEFB),
            200: Color(0xff00a898),
            300: Color(0xff00a898),
            400: Color(0xff00a898),
            500: Color(0xff00a898),
            600: Color(0xff00a898),
            700: Color(0xff00a898),
            800: Color(0xff00a898),
            900: Color(0xFF0D47A1),
          },
        ),
      ),
      home: const SafeArea(child: LoginScreen()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
