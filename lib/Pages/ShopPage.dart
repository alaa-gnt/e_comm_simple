import 'package:flutter/material.dart';

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

          ],
        ),),
          
    );
  }
}