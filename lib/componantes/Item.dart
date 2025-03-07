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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ), 
      child: Column(
        children: [
            Image.asset(image) , 
            Text(discription) , 
            Text(name) , 
            Text(price.toString()) ,
      ],     
      ),
    );
  }
}