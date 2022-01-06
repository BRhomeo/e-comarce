import 'package:e_project/main.dart';
import 'package:e_project/ui/categoris_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomScreenState createState() => _HomScreenState();
}

class _HomScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            floating: true,

            // title: Text(
            //   'CATEGORIS',
            //   style: TextStyle(color: Colors.black),
            // ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/homePage.png',
                width: 50,
              ),
              title: const Text(
                'CATEGORIS',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
              child: GridView.builder(
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: allItems.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Image.asset(allItems[index].imgPath
                        // 'assets/computerAcc.png',
                        ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 75,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.white,
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          allItems[index].catoName,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CatoScreen(
                                    items: allItems[index],
                                  )),
                        ),
                        child: const SizedBox(
                          height: 160,
                          width: 250,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
