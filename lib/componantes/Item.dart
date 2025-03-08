import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name ; 
  final String image ;
  final String discription ;
  final double price ;

  const Item({
    super.key ,
   required this.name , 
   required this.image , 
   required this.discription ,
    required this.price });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500 ,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ), 
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Image.asset(image , height: 100,) ,
                 
                Text(discription , style: 
             TextStyle(color: Colors.grey),) ,
          
                SizedBox(height: 10,) ,
          
                Text(name , style: TextStyle(
                  color: Colors.black , 
                  fontWeight: FontWeight.bold ,
                ),) , 
          
                Text(price.toString()) ,
          ],     
          ),
        ),
      ),
    );
  }
}