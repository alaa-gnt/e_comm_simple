import 'package:flutter/material.dart';
import 'package:e_comm_simple/componantes/Item.dart';

class ShopPage extends StatefulWidget {
   ShopPage({super.key});

final List<Item> items = [ 
                  Item(
                    name: "Nike",
                    image: "lib/images/image.png",
                    discription: "The Nike Air Max 90 stays true to its OG .",
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
] ;


  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // 🔥 Add this

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to Scaffold
      backgroundColor: Colors.grey[300],
      appBar: AppBar( 
        backgroundColor: Colors.grey[300] ,
        leading: IconButton(
          onPressed: () { 
            _scaffoldKey.currentState!.openDrawer() ; 
          },
           icon: Icon(Icons.menu),),
       ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset('lib/images/Nike.png'),
            ),
            ListTile(
              leading: Icon(Icons.home , color: Colors.white,),
              title: Text("Home" , style: TextStyle(
                color: Colors.white 
                
              ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart , color: Colors.white,),
              title: Text("About" , style: TextStyle(
                color: Colors.white ,
              ),),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 100, right: 20, left: 20),
        child: Column(
          children: [
            Container( 
              height: 40,
              width: 350, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), 
              color: Colors.white,
            ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: 
                Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                       Text("Search" , style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.bold ,
                  color: Colors.grey[700]
                                ),), 

                         Icon(Icons.search , color: Colors.grey[700],) ,      
                    ],
                  )
                  
                ),)
               
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child:Text("Hot Picks" , 
              style: 
              TextStyle( 
                fontSize: 30 ,
                fontWeight: FontWeight.bold ,
              ),),
              ),
            ) , 
            Expanded( // 🔥 Wrap ListView in Expanded to avoid layout issues
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context , index) { 
                  return Row(
                    children: [
                      widget.items[index] ,
                      SizedBox(width: 20,)
                    ],
                  );
                })
            ),
          ],
        ),
      ),
    );
  }
}
