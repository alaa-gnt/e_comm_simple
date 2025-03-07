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
            ListTile( 
               
            )
          ],
         ),
       ),
        body: Padding(padding: EdgeInsets.only(top: 100 , bottom: 100 , right: 20 , left: 20),
        child: Column(
          children: [
            // that hard thingy 

          ],
        ),),
          
    );
  }
}