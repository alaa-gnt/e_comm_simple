import 'package:flutter/material.dart';
import 'package:e_comm_simple/componantes/Item.dart';
class ShopPage extends StatefulWidget {
   
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey ,
       drawer: Drawer( 
         child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset('lib/images/Nike.png'),) , 
            ListTile( 
                leading: Icon(Icons.home),
                title: Text("Home"),
            ) ,

            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("About"),
            )
          ],
         ),
       ),
        body: Padding(padding: EdgeInsets.only(top: 100 , bottom: 100 , right: 20 , left: 20),
        child: Column(
          children: [
            // that hard thingy 

            Text("Hot Picks"),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Item(
                              name: "Nike Air Max 90",
                              image: "lib/images/airmax.jpg",
                              discription: "The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole, stitched overlays and classic, TPU accents. Fresh colors give a modern look while Max Air cushioning adds comfort to your journey.",
                              price: 120.0,
                            ),
                            Item(
                              name: "Nike Air Max 97",
                              image: "lib/images/airmax97.jpg",
                              discription: "The Nike Air Max 97 keeps a sneaker icon going strong with the same design details that made it famous: water-ripple lines, reflective piping and full-length Max Air cushioning.",
                              price: 170.0,
                            ),
                            Item(
                              name: "Nike Air Max 270",
                              image: "lib/images/airmax270.jpg",
                              discription: "The Nike Air Max 270 delivers visible cushioning under every step. Updated for modern comfort, it pays homage to the original 1991 Air Max 180 with an exaggerated tongue top and heritage logo.",
                              price: 150.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            }

          