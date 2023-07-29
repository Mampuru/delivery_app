import 'package:deliver_app/constants.dart';
import 'package:flutter/material.dart';

import 'menu_view.dart';

class StoreView extends StatelessWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stores"),backgroundColor: kPrimaryColor,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Card(
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: Center(child: Text("Promotion 1")),
                      )
                    ),
                    Card(
                        child: SizedBox(
                          height: 200,
                          width: 300,
                          child: Center(child: Text("Promotion 2")),
                        )
                    ),
                    Card(
                        child: SizedBox(
                          height: 200,
                          width: 300,
                          child: Center(child: Text("Promotion 3")),
                        )
                    ),
                    Card(
                        child: SizedBox(
                          height: 200,
                          width: 300,
                          child: Center(child: Text("Promotion 4")),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuView(storeName: "KFC",)));
                },
                child: const Card(
                    child: SizedBox(
                      height: 200,
                      child: Center(child: Text("KFC")),
                    )
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuView(storeName: "McDonald",)));
                },
                child: const Card(
                    child: SizedBox(
                      height: 200,
                      child: Center(child: Text("McDonald")),
                    )
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuView(storeName:"RocoMama" ,)));
                },
                child: const Card(
                    child: SizedBox(
                      height: 200,
                      child: Center(child: Text("RocoMama")),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
