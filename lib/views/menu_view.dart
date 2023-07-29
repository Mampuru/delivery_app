import 'package:flutter/material.dart';

import '../constants.dart';

class MenuView extends StatelessWidget {
  final storeName;
  const MenuView({Key? key, this.storeName,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stores"),backgroundColor: kPrimaryColor,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                child: SizedBox(
                  height: 200,
                  child: Center(child: Text("$storeName")),
                )
            ),
            const SizedBox(height: 30,),
            const Text("Beef Burger",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Chicken Burger",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Veggie Burger",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Salad",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Milkshakes",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Cold Drinks",style: TextStyle(fontSize: 20),),
            const Divider(),
            const Text("Desserts",style: TextStyle(fontSize: 20),),
            const Divider()
          ],
        ),
      ),
    );
  }
}
