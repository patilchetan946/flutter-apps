import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/controller/wishlist_controller.dart';

class WishListDisplay extends StatefulWidget {
  const WishListDisplay({super.key});

  @override
  State createState() => _WishlistDisplayState();
}

class _WishlistDisplayState extends State {
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<WishlistController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("WishList"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerObj.listofWish.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.network(
                        "${providerObj.listofWish[index].productImage}")),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Text("${providerObj.listofWish[index].productName}"),
                    const SizedBox(height: 10),
                    Text("${providerObj.listofWish[index].price}"),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
